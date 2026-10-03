package javacard.framework;

/** 模拟环境：Applet 基类（单一 applet 注册表 + selectingApplet 标志） */
public abstract class Applet {
    private static Applet currentApplet;
    private static boolean selectingFlag;
    private byte[] aid;

    protected Applet() {
    }

    protected final void register(byte[] bArray, short bOffset, byte bLength) {
        aid = new byte[bLength & 0xFF];
        System.arraycopy(bArray, bOffset, aid, 0, bLength & 0xFF);
        currentApplet = this;
    }

    public final void register() {
        currentApplet = this;
    }

    public boolean select() {
        return true;
    }

    public void deselect() {
    }

    public abstract void process(APDU apdu) throws ISOException;

    public final boolean selectingApplet() {
        return selectingFlag;
    }

    // ==== 宿主控制 ====
    public static void __setSelecting(boolean s) {
        selectingFlag = s;
    }

    public static Applet __current() {
        return currentApplet;
    }

    public byte[] __aid() {
        return aid;
    }
}
