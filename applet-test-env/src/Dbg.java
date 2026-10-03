package tools;
public class Dbg {
    public static void main(String[] a) {
        Host host = new Host(Host.h("A00000000386980701"), (short) 0);
        host.xfer(Host.h("00A4040009A00000000386980701"));
        System.out.println("sel3F00: " + Host.hex(host.xfer(Host.h("00A40000023F00"))));
        System.out.println("create0500: " + Host.hex(host.xfer(Host.h("80E0050006"), Host.h("280008F0F0FF"))));
        System.out.println("create2000: " + Host.hex(host.xfer(Host.h("80E0200006"), Host.h("280004F0F0FF"))));
        System.out.println("sel0500: " + Host.hex(host.xfer(Host.h("00A40000020500"))));
        System.out.println("sel2000: " + Host.hex(host.xfer(Host.h("00A40000022000"))));
        System.out.println("sel3F00: " + Host.hex(host.xfer(Host.h("00A40000023F00"))));
        System.out.println("sel0500 again: " + Host.hex(host.xfer(Host.h("00A40000020500"))));
    }
}
