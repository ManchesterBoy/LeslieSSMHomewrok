import com.ssm.entity.Employee;
import com.ssm.mapper.EmployeeMapper;
import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;
import org.junit.Before;
import org.junit.Test;

import java.io.IOException;
import java.io.InputStream;
import java.util.List;

//This is created by LeslieLu!!!

public class AppTest {


    SqlSessionFactory sessionFactory = null;

    @Before
    public void createFactory() throws IOException {
        //获取sqlsession工厂
        InputStream is = Resources.getResourceAsStream("mybatis/mybatis.xml");
        sessionFactory = new SqlSessionFactoryBuilder().build(is);
    }

    @Test
    public void testFindAll() {
        SqlSession session = sessionFactory.openSession();
        EmployeeMapper em = session.getMapper(EmployeeMapper.class);
        List<Employee> list = em.findAll();
        for (Employee s : list) {
            System.out.println(s);
        }

        session.close();

    }


}
