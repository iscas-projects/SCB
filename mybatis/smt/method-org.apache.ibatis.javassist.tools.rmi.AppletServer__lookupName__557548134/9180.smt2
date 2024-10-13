(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var662 0)
(declare-sort var868 0)
(declare-sort var3301 0)
(declare-sort var3231 0)
(declare-sort var1173 0)
(declare-sort var2399 0)
(declare-sort var642 0)
(declare-sort var2519 0)
(declare-sort var3728 0)
(declare-sort var3077 0)
(declare-sort var3954 0)
(declare-sort var3271 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1173-init () var1173)
(declare-fun <init>/1695891392 (var1173 var3301) void)
(declare-fun var2399_readUTF/988356053 (var642) String)
(declare-fun cast-from-var1173-to-var642 (var1173) var642)
(declare-fun exportedNames/556341560 (var662) var2519)
(declare-fun var2519_get/1088891777 (var2519 var3728) var3728)
(declare-fun cast-from-String-to-var3728 (String) var3728)
(declare-fun cast-from-var3728-to-var3077 (var3728) var3077)
(declare-fun write/1886568149 (var3231 (Array Int Int)) void)
(declare-fun var3954-init () var3954)
(declare-fun <init>/353453722 (var3954 var3231) void)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun logging2/-690598641 (var3271 String) void)
(declare-fun cast-from-var662-to-var3271 (var662) var3271)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun writeInt/-843879718 (var3954 Int) void)
(declare-fun writeUTF/-1158577172 (var3954 String) void)
(declare-fun flush/66915687 (var3954) void)
(declare-fun close/-1038412301 (var3954) void)
(declare-fun close/-958193192 (var1173) void)
(declare-const null-var662 var662)
(declare-const null-String String)
(declare-const null-var3301 var3301)
(declare-const null-var3231 var3231)
(declare-const var662-okHeader (Array Int Int))
(declare-const null-var3077 var3077)
(declare-const var2385 var662) ; Statement: r3 := @this: org.apache.ibatis.javassist.tools.rmi.AppletServer 
(assert (not (= var2385 null-var662)))
(declare-const var3169 String) ; Statement: r17 := @parameter0: java.lang.String 
(assert (not (= var3169 null-String)))
(declare-const var772 var3301) ; Statement: r1 := @parameter1: java.io.InputStream 
(assert (not (= var772 null-var3301)))
(declare-const var1407 var3231) ; Statement: r7 := @parameter2: java.io.OutputStream 
(assert (not (= var1407 null-var3231)))
(define-const var3407 var1173 var1173-init) ; Statement: $r18 = new java.io.ObjectInputStream 
(assert true)
;(assert (<init>/1695891392 var3407 var772)) ; Statement: specialinvoke $r18.<java.io.ObjectInputStream: void <init>(java.io.InputStream)>(r1) 

(declare-const var3407!1 var1173)
(declare-const var772!1 var3301)
(define-const var386 String (var2399_readUTF/988356053 (cast-from-var1173-to-var642 var3407!1))) ; Statement: r2 = staticinvoke <java.io.DataInputStream: java.lang.String readUTF(java.io.DataInput)>($r18) 
(define-const var1140 var2519 (exportedNames/556341560 var2385)) ; Statement: $r4 = r3.<org.apache.ibatis.javassist.tools.rmi.AppletServer: java.util.Map exportedNames> 
(define-const var2183 var3728 (var2519_get/1088891777 var1140 (cast-from-String-to-var3728 var386))) ; Statement: $r5 = interfaceinvoke $r4.<java.util.Map: java.lang.Object get(java.lang.Object)>(r2) 
(define-const var3524 var3077 (cast-from-var3728-to-var3077 var2183)) ; Statement: r6 = (org.apache.ibatis.javassist.tools.rmi.ExportedObject) $r5 
(define-const var1927 (Array Int Int) var662-okHeader) ; Statement: $r8 = <org.apache.ibatis.javassist.tools.rmi.AppletServer: byte[] okHeader> 
(assert true)
;(assert (write/1886568149 var1407 var1927)) ; Statement: virtualinvoke r7.<java.io.OutputStream: void write(byte[])>($r8) 

(declare-const var1407!1 var3231)
(declare-const var1927!1 (Array Int Int))
(define-const var334 var3954 var3954-init) ; Statement: $r19 = new java.io.ObjectOutputStream 
(assert true)
;(assert (<init>/353453722 var334 var1407!1)) ; Statement: specialinvoke $r19.<java.io.ObjectOutputStream: void <init>(java.io.OutputStream)>(r7) 

(declare-const var334!1 var3954)
(declare-const var1407!2 var3231)
 ; Statement: if r6 != null goto virtualinvoke r3.<org.apache.ibatis.javassist.tools.rmi.AppletServer: void logging2(java.lang.String)>(r2) 
(assert (not (not (= var3524 null-var3077)))) ; Negate: Cond: r6 != null  
(define-const var512 String String-init) ; Statement: $r20 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var512)) ; Statement: specialinvoke $r20.<java.lang.StringBuilder: void <init>()>() 
(declare-const var512!1 String)
(assert (= var512!1 ""))
(assert true)
(define-const var3853 String (append/672562846 var512!1 var386)) ; Statement: $r14 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2) 
(declare-const var512!2 String)
(assert (= var512!2 (str.++ var512!1 var386)))
(assert true)
(define-const var999 String (append/672562846 var3853 "not found.")) ; Statement: $r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("not found.") 
(declare-const var3853!1 String)
(assert (= var3853!1 (str.++ var3853 "not found.")))
(assert true)
(define-const var3522 String (toString/-2075883882 var999)) ; Statement: $r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (logging2/-690598641 (cast-from-var662-to-var3271 var2385) var3522)) ; Statement: virtualinvoke r3.<org.apache.ibatis.javassist.tools.rmi.AppletServer: void logging2(java.lang.String)>($r16) 

(declare-const var2385!1 var662)
(declare-const var3522!1 String)
(define-const var3652 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i2 = (int) -1 
(assert true)
;(assert (writeInt/-843879718 var334!1 var3652)) ; Statement: virtualinvoke $r19.<java.io.ObjectOutputStream: void writeInt(int)>($i2) 

(declare-const var334!2 var3954)
(declare-const var3652!1 Int)
(assert true)
;(assert (writeUTF/-1158577172 var334!2 "error")) ; Statement: virtualinvoke $r19.<java.io.ObjectOutputStream: void writeUTF(java.lang.String)>("error") 

(declare-const var334!3 var3954)
(declare-const var1907 String)
 ; Statement: goto [?= virtualinvoke $r19.<java.io.ObjectOutputStream: void flush()>()] 
(assert true) ; Non Conditional
(assert true)
;(assert (flush/66915687 var334!3)) ; Statement: virtualinvoke $r19.<java.io.ObjectOutputStream: void flush()>() 

(declare-const var334!4 var3954)
(assert true)
;(assert (close/-1038412301 var334!4)) ; Statement: virtualinvoke $r19.<java.io.ObjectOutputStream: void close()>() 

(declare-const var334!5 var3954)
(assert true)
;(assert (close/-958193192 var3407!1)) ; Statement: virtualinvoke $r18.<java.io.ObjectInputStream: void close()>() 

(declare-const var3407!2 var1173)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {var1173-init=([], java.io.ObjectInputStream), <init>/1695891392=([java.io.ObjectInputStream, java.io.InputStream], void), var2399_readUTF/988356053=([java.io.DataInput], java.lang.String), cast-from-var1173-to-var642=([java.io.ObjectInputStream], java.io.DataInput), exportedNames/556341560=([org.apache.ibatis.javassist.tools.rmi.AppletServer], java.util.Map), var2519_get/1088891777=([java.util.Map, java.lang.Object], java.lang.Object), cast-from-String-to-var3728=([java.lang.String], java.lang.Object), cast-from-var3728-to-var3077=([java.lang.Object], org.apache.ibatis.javassist.tools.rmi.ExportedObject), write/1886568149=([java.io.OutputStream, byte[]], void), var3954-init=([], java.io.ObjectOutputStream), <init>/353453722=([java.io.ObjectOutputStream, java.io.OutputStream], void), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), logging2/-690598641=([org.apache.ibatis.javassist.tools.web.Webserver, java.lang.String], void), cast-from-var662-to-var3271=([org.apache.ibatis.javassist.tools.rmi.AppletServer], org.apache.ibatis.javassist.tools.web.Webserver), cast-from-Int-to-Int=([int], int), writeInt/-843879718=([java.io.ObjectOutputStream, int], void), writeUTF/-1158577172=([java.io.ObjectOutputStream, java.lang.String], void), flush/66915687=([java.io.ObjectOutputStream], void), close/-1038412301=([java.io.ObjectOutputStream], void), close/-958193192=([java.io.ObjectInputStream], void)}
; {var662=org.apache.ibatis.javassist.tools.rmi.AppletServer, var2385=r3, var3169=r17, var868=null_type, var3301=java.io.InputStream, var772=r1, var3231=java.io.OutputStream, var1407=r7, var1173=java.io.ObjectInputStream, var3407=$r18, var2399=java.io.DataInputStream, var642=java.io.DataInput, var386=r2, var2519=java.util.Map, var1140=$r4, var3728=java.lang.Object, var2183=$r5, var3077=org.apache.ibatis.javassist.tools.rmi.ExportedObject, var3524=r6, var1927=$r8, var3954=java.io.ObjectOutputStream, var334=$r19, var512=$r20, var3853=$r14, var999=$r15, var3522=$r16, var3271=org.apache.ibatis.javassist.tools.web.Webserver, var3652=$i2, var1907="error"}
; {org.apache.ibatis.javassist.tools.rmi.AppletServer=var662, r3=var2385, r17=var3169, null_type=var868, java.io.InputStream=var3301, r1=var772, java.io.OutputStream=var3231, r7=var1407, java.io.ObjectInputStream=var1173, $r18=var3407, java.io.DataInputStream=var2399, java.io.DataInput=var642, r2=var386, java.util.Map=var2519, $r4=var1140, java.lang.Object=var3728, $r5=var2183, org.apache.ibatis.javassist.tools.rmi.ExportedObject=var3077, r6=var3524, $r8=var1927, java.io.ObjectOutputStream=var3954, $r19=var334, $r20=var512, $r14=var3853, $r15=var999, $r16=var3522, org.apache.ibatis.javassist.tools.web.Webserver=var3271, $i2=var3652, "error"=var1907}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r3 := @this: org.apache.ibatis.javassist.tools.rmi.AppletServer;	r17 := @parameter0: java.lang.String;	r1 := @parameter1: java.io.InputStream;	r7 := @parameter2: java.io.OutputStream;	$r18 = new java.io.ObjectInputStream;	specialinvoke $r18.<java.io.ObjectInputStream: void <init>(java.io.InputStream)>(r1);	r2 = staticinvoke <java.io.DataInputStream: java.lang.String readUTF(java.io.DataInput)>($r18);	$r4 = r3.<org.apache.ibatis.javassist.tools.rmi.AppletServer: java.util.Map exportedNames>;	$r5 = interfaceinvoke $r4.<java.util.Map: java.lang.Object get(java.lang.Object)>(r2);	r6 = (org.apache.ibatis.javassist.tools.rmi.ExportedObject) $r5;	$r8 = <org.apache.ibatis.javassist.tools.rmi.AppletServer: byte[] okHeader>;	virtualinvoke r7.<java.io.OutputStream: void write(byte[])>($r8);	$r19 = new java.io.ObjectOutputStream;	specialinvoke $r19.<java.io.ObjectOutputStream: void <init>(java.io.OutputStream)>(r7);	if r6 != null goto virtualinvoke r3.<org.apache.ibatis.javassist.tools.rmi.AppletServer: void logging2(java.lang.String)>(r2);	$r20 = new java.lang.StringBuilder;	specialinvoke $r20.<java.lang.StringBuilder: void <init>()>();	$r14 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2);	$r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("not found.");	$r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke r3.<org.apache.ibatis.javassist.tools.rmi.AppletServer: void logging2(java.lang.String)>($r16);	$i2 = (int) -1;	virtualinvoke $r19.<java.io.ObjectOutputStream: void writeInt(int)>($i2);	virtualinvoke $r19.<java.io.ObjectOutputStream: void writeUTF(java.lang.String)>("error");	goto [?= virtualinvoke $r19.<java.io.ObjectOutputStream: void flush()>()];	virtualinvoke $r19.<java.io.ObjectOutputStream: void flush()>();	virtualinvoke $r19.<java.io.ObjectOutputStream: void close()>();	virtualinvoke $r18.<java.io.ObjectInputStream: void close()>();	return
;block_num 3