import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;

public class Test {
    public static void main(String[] args) {
        BCryptPasswordEncoder encoder = new BCryptPasswordEncoder();
        System.out.println(encoder.encode("1234")); // admin critic
        System.out.println(encoder.encode("a")); // a
        System.out.println(encoder.encode("b")); // b
        System.out.println(encoder.encode("c")); // c
    }
}
