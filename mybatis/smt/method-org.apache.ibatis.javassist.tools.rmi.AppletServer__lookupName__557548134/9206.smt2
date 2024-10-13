(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3384 0)
(declare-sort var2429 0)
(declare-sort var2741 0)
(declare-sort var1935 0)
(declare-sort var1358 0)
(declare-sort var833 0)
(declare-sort var1617 0)
(declare-sort var2987 0)
(declare-sort var2769 0)
(declare-sort var3119 0)
(declare-sort var2958 0)
(declare-sort var1527 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1358-init () var1358)
(declare-fun <init>/1695891392 (var1358 var2741) void)
(declare-fun var833_readUTF/988356053 (var1617) String)
(declare-fun cast-from-var1358-to-var1617 (var1358) var1617)
(declare-fun exportedNames/556341560 (var3384) var2987)
(declare-fun var2987_get/1088891777 (var2987 var2769) var2769)
(declare-fun cast-from-String-to-var2769 (String) var2769)
(declare-fun cast-from-var2769-to-var3119 (var2769) var3119)
(declare-fun write/1886568149 (var1935 (Array Int Int)) void)
(declare-fun var2958-init () var2958)
(declare-fun <init>/353453722 (var2958 var1935) void)
(declare-fun logging2/-690598641 (var1527 String) void)
(declare-fun cast-from-var3384-to-var1527 (var3384) var1527)
(declare-fun identifier/2036168365 (var3119) Int)
(declare-fun writeInt/-843879718 (var2958 Int) void)
(declare-fun object/2036168365 (var3119) var2769)
(declare-fun getClass/1258963082 (var2769) ClassObject)
(declare-fun getName/-1958580599 (ClassObject) String)
(declare-fun writeUTF/-1158577172 (var2958 String) void)
(declare-fun flush/66915687 (var2958) void)
(declare-fun close/-1038412301 (var2958) void)
(declare-fun close/-958193192 (var1358) void)
(declare-const null-var3384 var3384)
(declare-const null-String String)
(declare-const null-var2741 var2741)
(declare-const null-var1935 var1935)
(declare-const var3384-okHeader (Array Int Int))
(declare-const null-var3119 var3119)
(declare-const var1002 var3384) ; Statement: r3 := @this: org.apache.ibatis.javassist.tools.rmi.AppletServer 
(assert (not (= var1002 null-var3384)))
(declare-const var3663 String) ; Statement: r17 := @parameter0: java.lang.String 
(assert (not (= var3663 null-String)))
(declare-const var3556 var2741) ; Statement: r1 := @parameter1: java.io.InputStream 
(assert (not (= var3556 null-var2741)))
(declare-const var2574 var1935) ; Statement: r7 := @parameter2: java.io.OutputStream 
(assert (not (= var2574 null-var1935)))
(define-const var3909 var1358 var1358-init) ; Statement: $r18 = new java.io.ObjectInputStream 
(assert true)
;(assert (<init>/1695891392 var3909 var3556)) ; Statement: specialinvoke $r18.<java.io.ObjectInputStream: void <init>(java.io.InputStream)>(r1) 

(declare-const var3909!1 var1358)
(declare-const var3556!1 var2741)
(define-const var3673 String (var833_readUTF/988356053 (cast-from-var1358-to-var1617 var3909!1))) ; Statement: r2 = staticinvoke <java.io.DataInputStream: java.lang.String readUTF(java.io.DataInput)>($r18) 
(define-const var1257 var2987 (exportedNames/556341560 var1002)) ; Statement: $r4 = r3.<org.apache.ibatis.javassist.tools.rmi.AppletServer: java.util.Map exportedNames> 
(define-const var572 var2769 (var2987_get/1088891777 var1257 (cast-from-String-to-var2769 var3673))) ; Statement: $r5 = interfaceinvoke $r4.<java.util.Map: java.lang.Object get(java.lang.Object)>(r2) 
(define-const var3019 var3119 (cast-from-var2769-to-var3119 var572)) ; Statement: r6 = (org.apache.ibatis.javassist.tools.rmi.ExportedObject) $r5 
(define-const var851 (Array Int Int) var3384-okHeader) ; Statement: $r8 = <org.apache.ibatis.javassist.tools.rmi.AppletServer: byte[] okHeader> 
(assert true)
;(assert (write/1886568149 var2574 var851)) ; Statement: virtualinvoke r7.<java.io.OutputStream: void write(byte[])>($r8) 

(declare-const var2574!1 var1935)
(declare-const var851!1 (Array Int Int))
(define-const var2254 var2958 var2958-init) ; Statement: $r19 = new java.io.ObjectOutputStream 
(assert true)
;(assert (<init>/353453722 var2254 var2574!1)) ; Statement: specialinvoke $r19.<java.io.ObjectOutputStream: void <init>(java.io.OutputStream)>(r7) 

(declare-const var2254!1 var2958)
(declare-const var2574!2 var1935)
 ; Statement: if r6 != null goto virtualinvoke r3.<org.apache.ibatis.javassist.tools.rmi.AppletServer: void logging2(java.lang.String)>(r2) 
(assert (not (= var3019 null-var3119))) ; Cond: r6 != null 
(assert true)
;(assert (logging2/-690598641 (cast-from-var3384-to-var1527 var1002) var3673)) ; Statement: virtualinvoke r3.<org.apache.ibatis.javassist.tools.rmi.AppletServer: void logging2(java.lang.String)>(r2) 

(declare-const var1002!1 var3384)
(declare-const var3673!1 String)
(define-const var3869 Int (identifier/2036168365 var3019)) ; Statement: $i0 = r6.<org.apache.ibatis.javassist.tools.rmi.ExportedObject: int identifier> 
(assert true)
;(assert (writeInt/-843879718 var2254!1 var3869)) ; Statement: virtualinvoke $r19.<java.io.ObjectOutputStream: void writeInt(int)>($i0) 

(declare-const var2254!2 var2958)
(declare-const var3869!1 Int)
(define-const var645 var2769 (object/2036168365 var3019)) ; Statement: $r10 = r6.<org.apache.ibatis.javassist.tools.rmi.ExportedObject: java.lang.Object object> 
(assert true)
(define-const var1805 ClassObject (getClass/1258963082 var645)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.Object: java.lang.Class getClass()>() 
(assert true)
(define-const var3871 String (getName/-1958580599 var1805)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.Class: java.lang.String getName()>() 
(assert true)
;(assert (writeUTF/-1158577172 var2254!2 var3871)) ; Statement: virtualinvoke $r19.<java.io.ObjectOutputStream: void writeUTF(java.lang.String)>($r12) 

(declare-const var2254!3 var2958)
(declare-const var3871!1 String)
(assert true) ; Non Conditional
(assert true)
;(assert (flush/66915687 var2254!3)) ; Statement: virtualinvoke $r19.<java.io.ObjectOutputStream: void flush()>() 

(declare-const var2254!4 var2958)
(assert true)
;(assert (close/-1038412301 var2254!4)) ; Statement: virtualinvoke $r19.<java.io.ObjectOutputStream: void close()>() 

(declare-const var2254!5 var2958)
(assert true)
;(assert (close/-958193192 var3909!1)) ; Statement: virtualinvoke $r18.<java.io.ObjectInputStream: void close()>() 

(declare-const var3909!2 var1358)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {var1358-init=([], java.io.ObjectInputStream), <init>/1695891392=([java.io.ObjectInputStream, java.io.InputStream], void), var833_readUTF/988356053=([java.io.DataInput], java.lang.String), cast-from-var1358-to-var1617=([java.io.ObjectInputStream], java.io.DataInput), exportedNames/556341560=([org.apache.ibatis.javassist.tools.rmi.AppletServer], java.util.Map), var2987_get/1088891777=([java.util.Map, java.lang.Object], java.lang.Object), cast-from-String-to-var2769=([java.lang.String], java.lang.Object), cast-from-var2769-to-var3119=([java.lang.Object], org.apache.ibatis.javassist.tools.rmi.ExportedObject), write/1886568149=([java.io.OutputStream, byte[]], void), var2958-init=([], java.io.ObjectOutputStream), <init>/353453722=([java.io.ObjectOutputStream, java.io.OutputStream], void), logging2/-690598641=([org.apache.ibatis.javassist.tools.web.Webserver, java.lang.String], void), cast-from-var3384-to-var1527=([org.apache.ibatis.javassist.tools.rmi.AppletServer], org.apache.ibatis.javassist.tools.web.Webserver), identifier/2036168365=([org.apache.ibatis.javassist.tools.rmi.ExportedObject], int), writeInt/-843879718=([java.io.ObjectOutputStream, int], void), object/2036168365=([org.apache.ibatis.javassist.tools.rmi.ExportedObject], java.lang.Object), getClass/1258963082=([java.lang.Object], java.lang.Class), getName/-1958580599=([java.lang.Class], java.lang.String), writeUTF/-1158577172=([java.io.ObjectOutputStream, java.lang.String], void), flush/66915687=([java.io.ObjectOutputStream], void), close/-1038412301=([java.io.ObjectOutputStream], void), close/-958193192=([java.io.ObjectInputStream], void)}
; {var3384=org.apache.ibatis.javassist.tools.rmi.AppletServer, var1002=r3, var3663=r17, var2429=null_type, var2741=java.io.InputStream, var3556=r1, var1935=java.io.OutputStream, var2574=r7, var1358=java.io.ObjectInputStream, var3909=$r18, var833=java.io.DataInputStream, var1617=java.io.DataInput, var3673=r2, var2987=java.util.Map, var1257=$r4, var2769=java.lang.Object, var572=$r5, var3119=org.apache.ibatis.javassist.tools.rmi.ExportedObject, var3019=r6, var851=$r8, var2958=java.io.ObjectOutputStream, var2254=$r19, var1527=org.apache.ibatis.javassist.tools.web.Webserver, var3869=$i0, var645=$r10, var1805=$r11, var3871=$r12}
; {org.apache.ibatis.javassist.tools.rmi.AppletServer=var3384, r3=var1002, r17=var3663, null_type=var2429, java.io.InputStream=var2741, r1=var3556, java.io.OutputStream=var1935, r7=var2574, java.io.ObjectInputStream=var1358, $r18=var3909, java.io.DataInputStream=var833, java.io.DataInput=var1617, r2=var3673, java.util.Map=var2987, $r4=var1257, java.lang.Object=var2769, $r5=var572, org.apache.ibatis.javassist.tools.rmi.ExportedObject=var3119, r6=var3019, $r8=var851, java.io.ObjectOutputStream=var2958, $r19=var2254, org.apache.ibatis.javassist.tools.web.Webserver=var1527, $i0=var3869, $r10=var645, $r11=var1805, $r12=var3871}
;seq 
;cnt {}
;stmts r3 := @this: org.apache.ibatis.javassist.tools.rmi.AppletServer;	r17 := @parameter0: java.lang.String;	r1 := @parameter1: java.io.InputStream;	r7 := @parameter2: java.io.OutputStream;	$r18 = new java.io.ObjectInputStream;	specialinvoke $r18.<java.io.ObjectInputStream: void <init>(java.io.InputStream)>(r1);	r2 = staticinvoke <java.io.DataInputStream: java.lang.String readUTF(java.io.DataInput)>($r18);	$r4 = r3.<org.apache.ibatis.javassist.tools.rmi.AppletServer: java.util.Map exportedNames>;	$r5 = interfaceinvoke $r4.<java.util.Map: java.lang.Object get(java.lang.Object)>(r2);	r6 = (org.apache.ibatis.javassist.tools.rmi.ExportedObject) $r5;	$r8 = <org.apache.ibatis.javassist.tools.rmi.AppletServer: byte[] okHeader>;	virtualinvoke r7.<java.io.OutputStream: void write(byte[])>($r8);	$r19 = new java.io.ObjectOutputStream;	specialinvoke $r19.<java.io.ObjectOutputStream: void <init>(java.io.OutputStream)>(r7);	if r6 != null goto virtualinvoke r3.<org.apache.ibatis.javassist.tools.rmi.AppletServer: void logging2(java.lang.String)>(r2);	virtualinvoke r3.<org.apache.ibatis.javassist.tools.rmi.AppletServer: void logging2(java.lang.String)>(r2);	$i0 = r6.<org.apache.ibatis.javassist.tools.rmi.ExportedObject: int identifier>;	virtualinvoke $r19.<java.io.ObjectOutputStream: void writeInt(int)>($i0);	$r10 = r6.<org.apache.ibatis.javassist.tools.rmi.ExportedObject: java.lang.Object object>;	$r11 = virtualinvoke $r10.<java.lang.Object: java.lang.Class getClass()>();	$r12 = virtualinvoke $r11.<java.lang.Class: java.lang.String getName()>();	virtualinvoke $r19.<java.io.ObjectOutputStream: void writeUTF(java.lang.String)>($r12);	virtualinvoke $r19.<java.io.ObjectOutputStream: void flush()>();	virtualinvoke $r19.<java.io.ObjectOutputStream: void close()>();	virtualinvoke $r18.<java.io.ObjectInputStream: void close()>();	return
;block_num 3