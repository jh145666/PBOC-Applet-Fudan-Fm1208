package tools;
public class Dbg2 {
    public static void main(String[] a) {
        Host host = new Host(Host.h("A00000000386980701"), (short) 0);
        host.xfer(Host.h("00A4040009A00000000386980701"));
        byte[] bad = Host.h("313233343534");
        byte[] good = Host.h("313233343535");
        for (int i = 1; i <= 4; i++) {
            String res = Host.hex(host.xfer(Host.h("0020000006"), bad));
            System.out.println("wrong#" + i + ": " + res);
        }
        System.out.println("good after 4 wrong: " + Host.hex(host.xfer(Host.h("0020000006"), good)));
    }
}
