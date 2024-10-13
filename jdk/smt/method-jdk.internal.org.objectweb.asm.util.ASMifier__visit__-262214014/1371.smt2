(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1248 0)
(declare-sort var3328 0)
(declare-sort var529 0)
(declare-sort var199 0)
(declare-sort var563 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun lastIndexOf/-1292097097 (String Int) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun text/-10557480 (var199) var529)
(declare-fun cast-from-var1248-to-var199 (var1248) var199)
(declare-fun var529_add/328494887 (var529 var563) Bool)
(declare-fun cast-from-String-to-var563 (String) var563)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun buf/-10557480 (var199) String)
(declare-fun setLength/163251007 (String Int) void)
(define-fun append/1560614132 ((s String) (tail String)) String (str.++ s tail))
(declare-fun appendAccess/732682052 (var1248 Int) void)
(declare-fun appendConstant/2119113448 (var1248 var563) void)
(define-fun toString/-222306083 ((s String)) String s)
(declare-const null-var1248 var1248)
(declare-const null-Int Int)
(declare-const null-String String)
(declare-const null-__Array__Int__String__ (Array Int String))
(declare-const var488 var1248) ; Statement: r1 := @this: jdk.internal.org.objectweb.asm.util.ASMifier 
(assert (not (= var488 null-var1248)))
(declare-const var260 Int) ; Statement: i2 := @parameter0: int 
(assert (not (= var260 null-Int)))
(declare-const var1125 Int) ; Statement: i3 := @parameter1: int 
(assert (not (= var1125 null-Int)))
(declare-const var1453 String) ; Statement: r0 := @parameter2: java.lang.String 
(assert (not (= var1453 null-String)))
(declare-const var904 String) ; Statement: r26 := @parameter3: java.lang.String 
(assert (not (= var904 null-String)))
(declare-const var3216 String) ; Statement: r27 := @parameter4: java.lang.String 
(assert (not (= var3216 null-String)))
(declare-const var3340 (Array Int String)) ; Statement: r28 := @parameter5: java.lang.String[] 
(assert (not (= var3340 null-__Array__Int__String__)))
(assert true)
(define-const var2936 Int (lastIndexOf/-1292097097 var1453 47)) ; Statement: i0 = virtualinvoke r0.<java.lang.String: int lastIndexOf(int)>(47) 
(define-const var1377 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i9 = (int) -1 
 ; Statement: if i0 != $i9 goto $r3 = r1.<jdk.internal.org.objectweb.asm.util.ASMifier: java.util.List text> 
(assert (not (not (= var2936 var1377)))) ; Negate: Cond: i0 != $i9  
(define-const var839 String var1453) ; Statement: r41 = r0 
 ; Statement: goto [?= $r10 = r1.<jdk.internal.org.objectweb.asm.util.ASMifier: java.util.List text>] 
(assert true) ; Non Conditional
(define-const var1241 var529 (text/-10557480 (cast-from-var1248-to-var199 var488))) ; Statement: $r10 = r1.<jdk.internal.org.objectweb.asm.util.ASMifier: java.util.List text> 
;(assert (var529_add/328494887 var1241 (cast-from-String-to-var563 "import java.util.*;\n"))) ; Statement: interfaceinvoke $r10.<java.util.List: boolean add(java.lang.Object)>("import java.util.*;\n") 

(declare-const var1241!1 var529)
(declare-const var1034 String)
(define-const var1226 var529 (text/-10557480 (cast-from-var1248-to-var199 var488))) ; Statement: $r11 = r1.<jdk.internal.org.objectweb.asm.util.ASMifier: java.util.List text> 
;(assert (var529_add/328494887 var1226 (cast-from-String-to-var563 "import jdk.internal.org.objectweb.asm.*;\n"))) ; Statement: interfaceinvoke $r11.<java.util.List: boolean add(java.lang.Object)>("import jdk.internal.org.objectweb.asm.*;\n") 

(declare-const var1226!1 var529)
(declare-const var2863 String)
(define-const var2982 var529 (text/-10557480 (cast-from-var1248-to-var199 var488))) ; Statement: $r13 = r1.<jdk.internal.org.objectweb.asm.util.ASMifier: java.util.List text> 
(define-const var1156 String String-init) ; Statement: $r53 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1156)) ; Statement: specialinvoke $r53.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1156!1 String)
(assert (= var1156!1 ""))
(assert true)
(define-const var983 String (append/672562846 var1156!1 "public class ")) ; Statement: $r14 = virtualinvoke $r53.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("public class ") 
(declare-const var1156!2 String)
(assert (= var1156!2 (str.++ var1156!1 "public class ")))
(assert true)
(define-const var777 String (append/672562846 var983 var839)) ; Statement: $r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r41) 
(declare-const var983!1 String)
(assert (= var983!1 (str.++ var983 var839)))
(assert true)
(define-const var399 String (append/672562846 var777 "Dump implements Opcodes {\n\n")) ; Statement: $r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Dump implements Opcodes {\n\n") 
(declare-const var777!1 String)
(assert (= var777!1 (str.++ var777 "Dump implements Opcodes {\n\n")))
(assert true)
(define-const var1056 String (toString/-2075883882 var399)) ; Statement: $r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.String toString()>() 
;(assert (var529_add/328494887 var2982 (cast-from-String-to-var563 var1056))) ; Statement: interfaceinvoke $r13.<java.util.List: boolean add(java.lang.Object)>($r17) 

(declare-const var2982!1 var529)
(declare-const var1056!1 String)
(define-const var2175 var529 (text/-10557480 (cast-from-var1248-to-var199 var488))) ; Statement: $r18 = r1.<jdk.internal.org.objectweb.asm.util.ASMifier: java.util.List text> 
;(assert (var529_add/328494887 var2175 (cast-from-String-to-var563 "public static byte[] dump () throws Exception {\n\n"))) ; Statement: interfaceinvoke $r18.<java.util.List: boolean add(java.lang.Object)>("public static byte[] dump () throws Exception {\n\n") 

(declare-const var2175!1 var529)
(declare-const var2570 String)
(define-const var1779 var529 (text/-10557480 (cast-from-var1248-to-var199 var488))) ; Statement: $r19 = r1.<jdk.internal.org.objectweb.asm.util.ASMifier: java.util.List text> 
;(assert (var529_add/328494887 var1779 (cast-from-String-to-var563 "ClassWriter cw = new ClassWriter(0);\n"))) ; Statement: interfaceinvoke $r19.<java.util.List: boolean add(java.lang.Object)>("ClassWriter cw = new ClassWriter(0);\n") 

(declare-const var1779!1 var529)
(declare-const var612 String)
(define-const var77 var529 (text/-10557480 (cast-from-var1248-to-var199 var488))) ; Statement: $r20 = r1.<jdk.internal.org.objectweb.asm.util.ASMifier: java.util.List text> 
;(assert (var529_add/328494887 var77 (cast-from-String-to-var563 "FieldVisitor fv;\n"))) ; Statement: interfaceinvoke $r20.<java.util.List: boolean add(java.lang.Object)>("FieldVisitor fv;\n") 

(declare-const var77!1 var529)
(declare-const var425 String)
(define-const var2562 var529 (text/-10557480 (cast-from-var1248-to-var199 var488))) ; Statement: $r21 = r1.<jdk.internal.org.objectweb.asm.util.ASMifier: java.util.List text> 
;(assert (var529_add/328494887 var2562 (cast-from-String-to-var563 "MethodVisitor mv;\n"))) ; Statement: interfaceinvoke $r21.<java.util.List: boolean add(java.lang.Object)>("MethodVisitor mv;\n") 

(declare-const var2562!1 var529)
(declare-const var2195 String)
(define-const var2002 var529 (text/-10557480 (cast-from-var1248-to-var199 var488))) ; Statement: $r22 = r1.<jdk.internal.org.objectweb.asm.util.ASMifier: java.util.List text> 
;(assert (var529_add/328494887 var2002 (cast-from-String-to-var563 "AnnotationVisitor av0;\n\n"))) ; Statement: interfaceinvoke $r22.<java.util.List: boolean add(java.lang.Object)>("AnnotationVisitor av0;\n\n") 

(declare-const var2002!1 var529)
(declare-const var2243 String)
(define-const var3655 String (buf/-10557480 (cast-from-var1248-to-var199 var488))) ; Statement: $r23 = r1.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf> 
(assert true)
;(assert (setLength/163251007 var3655 0)) ; Statement: virtualinvoke $r23.<java.lang.StringBuffer: void setLength(int)>(0) 

(declare-const var3655!1 String)
(declare-const var3133 Int)
(define-const var2732 String (buf/-10557480 (cast-from-var1248-to-var199 var488))) ; Statement: $r24 = r1.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf> 
(assert true)
;(assert (append/1560614132 var2732 "cw.visit(")) ; Statement: virtualinvoke $r24.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("cw.visit(") 
(declare-const var2732!1 String)
(assert (str.prefixof var2732 var2732!1))
 ; Statement: lookupswitch(i2) {     case 46: goto $r39 = r1.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf>;     case 47: goto $r38 = r1.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf>;     case 48: goto $r37 = r1.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf>;     case 49: goto $r36 = r1.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf>;     case 50: goto $r35 = r1.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf>;     case 51: goto $r34 = r1.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf>;     case 196653: goto $r25 = r1.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf>;     default: goto $r40 = r1.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf>; } 
(assert (and (= var260 49) (and (not (= var260 48)) (and (not (= var260 47)) (and (not (= var260 46)) true))))) ; Intersect: Cond: i2 == 49  and Intersect: Negate: Cond: i2 == 48   and Intersect: Negate: Cond: i2 == 47   and Intersect: Negate: Cond: i2 == 46   and Non Conditional    
(define-const var3934 String (buf/-10557480 (cast-from-var1248-to-var199 var488))) ; Statement: $r36 = r1.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf> 
(assert true)
;(assert (append/1560614132 var3934 "V1_5")) ; Statement: virtualinvoke $r36.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("V1_5") 
(declare-const var3934!1 String)
(assert (str.prefixof var3934 var3934!1))
 ; Statement: goto [?= $r42 = r1.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf>] 
(assert true) ; Non Conditional
(define-const var780 String (buf/-10557480 (cast-from-var1248-to-var199 var488))) ; Statement: $r42 = r1.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf> 
(assert true)
;(assert (append/1560614132 var780 ", ")) ; Statement: virtualinvoke $r42.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(", ") 
(declare-const var780!1 String)
(assert (str.prefixof var780 var780!1))
(define-const var2308 Int (bv2nat (bvor ((_ int2bv 64) var1125) ((_ int2bv 64) 262144)))) ; Statement: $i6 = i3 | 262144 
(assert true)
;(assert (appendAccess/732682052 var488 var2308)) ; Statement: virtualinvoke r1.<jdk.internal.org.objectweb.asm.util.ASMifier: void appendAccess(int)>($i6) 

(declare-const var488!1 var1248)
(declare-const var2308!1 Int)
(define-const var3202 String (buf/-10557480 (cast-from-var1248-to-var199 var488!1))) ; Statement: $r43 = r1.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf> 
(assert true)
;(assert (append/1560614132 var3202 ", ")) ; Statement: virtualinvoke $r43.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(", ") 
(declare-const var3202!1 String)
(assert (str.prefixof var3202 var3202!1))
(assert true)
;(assert (appendConstant/2119113448 var488!1 (cast-from-String-to-var563 var1453))) ; Statement: virtualinvoke r1.<jdk.internal.org.objectweb.asm.util.ASMifier: void appendConstant(java.lang.Object)>(r0) 

(declare-const var488!2 var1248)
(declare-const var1453!1 String)
(define-const var1535 String (buf/-10557480 (cast-from-var1248-to-var199 var488!2))) ; Statement: $r44 = r1.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf> 
(assert true)
;(assert (append/1560614132 var1535 ", ")) ; Statement: virtualinvoke $r44.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(", ") 
(declare-const var1535!1 String)
(assert (str.prefixof var1535 var1535!1))
(assert true)
;(assert (appendConstant/2119113448 var488!2 (cast-from-String-to-var563 var904))) ; Statement: virtualinvoke r1.<jdk.internal.org.objectweb.asm.util.ASMifier: void appendConstant(java.lang.Object)>(r26) 

(declare-const var488!3 var1248)
(declare-const var904!1 String)
(define-const var690 String (buf/-10557480 (cast-from-var1248-to-var199 var488!3))) ; Statement: $r45 = r1.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf> 
(assert true)
;(assert (append/1560614132 var690 ", ")) ; Statement: virtualinvoke $r45.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(", ") 
(declare-const var690!1 String)
(assert (str.prefixof var690 var690!1))
(assert true)
;(assert (appendConstant/2119113448 var488!3 (cast-from-String-to-var563 var3216))) ; Statement: virtualinvoke r1.<jdk.internal.org.objectweb.asm.util.ASMifier: void appendConstant(java.lang.Object)>(r27) 

(declare-const var488!4 var1248)
(declare-const var3216!1 String)
(define-const var85 String (buf/-10557480 (cast-from-var1248-to-var199 var488!4))) ; Statement: $r46 = r1.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf> 
(assert true)
;(assert (append/1560614132 var85 ", ")) ; Statement: virtualinvoke $r46.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(", ") 
(declare-const var85!1 String)
(assert (str.prefixof var85 var85!1))
 ; Statement: if r28 == null goto $r29 = r1.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf> 
(assert (= var3340 null-__Array__Int__String__)) ; Cond: r28 == null 
(define-const var2557 String (buf/-10557480 (cast-from-var1248-to-var199 var488!4))) ; Statement: $r29 = r1.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf> 
(assert true)
;(assert (append/1560614132 var2557 "null")) ; Statement: virtualinvoke $r29.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("null") 
(declare-const var2557!1 String)
(assert (str.prefixof var2557 var2557!1))
(assert true) ; Non Conditional
(define-const var3051 String (buf/-10557480 (cast-from-var1248-to-var199 var488!4))) ; Statement: $r48 = r1.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf> 
(assert true)
;(assert (append/1560614132 var3051 ");\n\n")) ; Statement: virtualinvoke $r48.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(");\n\n") 
(declare-const var3051!1 String)
(assert (str.prefixof var3051 var3051!1))
(define-const var1383 var529 (text/-10557480 (cast-from-var1248-to-var199 var488!4))) ; Statement: $r49 = r1.<jdk.internal.org.objectweb.asm.util.ASMifier: java.util.List text> 
(define-const var2808 String (buf/-10557480 (cast-from-var1248-to-var199 var488!4))) ; Statement: $r50 = r1.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf> 
(assert true)
(define-const var677 String (toString/-222306083 var2808)) ; Statement: $r51 = virtualinvoke $r50.<java.lang.StringBuffer: java.lang.String toString()>() 
;(assert (var529_add/328494887 var1383 (cast-from-String-to-var563 var677))) ; Statement: interfaceinvoke $r49.<java.util.List: boolean add(java.lang.Object)>($r51) 

(declare-const var1383!1 var529)
(declare-const var677!1 String)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {lastIndexOf/-1292097097=([java.lang.String, int], int), cast-from-Int-to-Int=([int], int), text/-10557480=([jdk.internal.org.objectweb.asm.util.Printer], java.util.List), cast-from-var1248-to-var199=([jdk.internal.org.objectweb.asm.util.ASMifier], jdk.internal.org.objectweb.asm.util.Printer), var529_add/328494887=([java.util.List, java.lang.Object], boolean), cast-from-String-to-var563=([java.lang.String], java.lang.Object), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), buf/-10557480=([jdk.internal.org.objectweb.asm.util.Printer], java.lang.StringBuffer), setLength/163251007=([java.lang.StringBuffer, int], void), append/1560614132=([java.lang.StringBuffer, java.lang.String], java.lang.StringBuffer), appendAccess/732682052=([jdk.internal.org.objectweb.asm.util.ASMifier, int], void), appendConstant/2119113448=([jdk.internal.org.objectweb.asm.util.ASMifier, java.lang.Object], void), toString/-222306083=([java.lang.StringBuffer], java.lang.String)}
; {var1248=jdk.internal.org.objectweb.asm.util.ASMifier, var488=r1, var260=i2, var1125=i3, var1453=r0, var3328=null_type, var904=r26, var3216=r27, var3340=r28, var2936=i0, var1377=$i9, var839=r41, var529=java.util.List, var199=jdk.internal.org.objectweb.asm.util.Printer, var1241=$r10, var563=java.lang.Object, var1034="import java.util.*;\n", var1226=$r11, var2863="import jdk.internal.org.objectweb.asm.*;\n", var2982=$r13, var1156=$r53, var983=$r14, var777=$r15, var399=$r16, var1056=$r17, var2175=$r18, var2570="public static byte[] dump () throws Exception {\n\n", var1779=$r19, var612="ClassWriter cw = new ClassWriter(0);\n", var77=$r20, var425="FieldVisitor fv;\n", var2562=$r21, var2195="MethodVisitor mv;\n", var2002=$r22, var2243="AnnotationVisitor av0;\n\n", var3655=$r23, var3133=0, var2732=$r24, var3934=$r36, var780=$r42, var2308=$i6, var3202=$r43, var1535=$r44, var690=$r45, var85=$r46, var2557=$r29, var3051=$r48, var1383=$r49, var2808=$r50, var677=$r51}
; {jdk.internal.org.objectweb.asm.util.ASMifier=var1248, r1=var488, i2=var260, i3=var1125, r0=var1453, null_type=var3328, r26=var904, r27=var3216, r28=var3340, i0=var2936, $i9=var1377, r41=var839, java.util.List=var529, jdk.internal.org.objectweb.asm.util.Printer=var199, $r10=var1241, java.lang.Object=var563, "import java.util.*;\n"=var1034, $r11=var1226, "import jdk.internal.org.objectweb.asm.*;\n"=var2863, $r13=var2982, $r53=var1156, $r14=var983, $r15=var777, $r16=var399, $r17=var1056, $r18=var2175, "public static byte[] dump () throws Exception {\n\n"=var2570, $r19=var1779, "ClassWriter cw = new ClassWriter(0);\n"=var612, $r20=var77, "FieldVisitor fv;\n"=var425, $r21=var2562, "MethodVisitor mv;\n"=var2195, $r22=var2002, "AnnotationVisitor av0;\n\n"=var2243, $r23=var3655, 0=var3133, $r24=var2732, $r36=var3934, $r42=var780, $i6=var2308, $r43=var3202, $r44=var1535, $r45=var690, $r46=var85, $r29=var2557, $r48=var3051, $r49=var1383, $r50=var2808, $r51=var677}
;seq <java.lang.String: int lastIndexOf(int)>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuffer: void setLength(int)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.String toString()>
;cnt {"<java.lang.String: int lastIndexOf(int)>": 1,"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1,"<java.lang.StringBuffer: void setLength(int)>": 1,"<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>": 9,"<java.lang.StringBuffer: java.lang.String toString()>": 1}
;stmts r1 := @this: jdk.internal.org.objectweb.asm.util.ASMifier;	i2 := @parameter0: int;	i3 := @parameter1: int;	r0 := @parameter2: java.lang.String;	r26 := @parameter3: java.lang.String;	r27 := @parameter4: java.lang.String;	r28 := @parameter5: java.lang.String[];	i0 = virtualinvoke r0.<java.lang.String: int lastIndexOf(int)>(47);	$i9 = (int) -1;	if i0 != $i9 goto $r3 = r1.<jdk.internal.org.objectweb.asm.util.ASMifier: java.util.List text>;	r41 = r0;	goto [?= $r10 = r1.<jdk.internal.org.objectweb.asm.util.ASMifier: java.util.List text>];	$r10 = r1.<jdk.internal.org.objectweb.asm.util.ASMifier: java.util.List text>;	interfaceinvoke $r10.<java.util.List: boolean add(java.lang.Object)>("import java.util.*;\n");	$r11 = r1.<jdk.internal.org.objectweb.asm.util.ASMifier: java.util.List text>;	interfaceinvoke $r11.<java.util.List: boolean add(java.lang.Object)>("import jdk.internal.org.objectweb.asm.*;\n");	$r13 = r1.<jdk.internal.org.objectweb.asm.util.ASMifier: java.util.List text>;	$r53 = new java.lang.StringBuilder;	specialinvoke $r53.<java.lang.StringBuilder: void <init>()>();	$r14 = virtualinvoke $r53.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("public class ");	$r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r41);	$r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Dump implements Opcodes {\n\n");	$r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.String toString()>();	interfaceinvoke $r13.<java.util.List: boolean add(java.lang.Object)>($r17);	$r18 = r1.<jdk.internal.org.objectweb.asm.util.ASMifier: java.util.List text>;	interfaceinvoke $r18.<java.util.List: boolean add(java.lang.Object)>("public static byte[] dump () throws Exception {\n\n");	$r19 = r1.<jdk.internal.org.objectweb.asm.util.ASMifier: java.util.List text>;	interfaceinvoke $r19.<java.util.List: boolean add(java.lang.Object)>("ClassWriter cw = new ClassWriter(0);\n");	$r20 = r1.<jdk.internal.org.objectweb.asm.util.ASMifier: java.util.List text>;	interfaceinvoke $r20.<java.util.List: boolean add(java.lang.Object)>("FieldVisitor fv;\n");	$r21 = r1.<jdk.internal.org.objectweb.asm.util.ASMifier: java.util.List text>;	interfaceinvoke $r21.<java.util.List: boolean add(java.lang.Object)>("MethodVisitor mv;\n");	$r22 = r1.<jdk.internal.org.objectweb.asm.util.ASMifier: java.util.List text>;	interfaceinvoke $r22.<java.util.List: boolean add(java.lang.Object)>("AnnotationVisitor av0;\n\n");	$r23 = r1.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf>;	virtualinvoke $r23.<java.lang.StringBuffer: void setLength(int)>(0);	$r24 = r1.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf>;	virtualinvoke $r24.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("cw.visit(");	lookupswitch(i2) {     case 46: goto $r39 = r1.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf>;     case 47: goto $r38 = r1.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf>;     case 48: goto $r37 = r1.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf>;     case 49: goto $r36 = r1.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf>;     case 50: goto $r35 = r1.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf>;     case 51: goto $r34 = r1.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf>;     case 196653: goto $r25 = r1.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf>;     default: goto $r40 = r1.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf>; };	$r36 = r1.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf>;	virtualinvoke $r36.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("V1_5");	goto [?= $r42 = r1.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf>];	$r42 = r1.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf>;	virtualinvoke $r42.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(", ");	$i6 = i3 | 262144;	virtualinvoke r1.<jdk.internal.org.objectweb.asm.util.ASMifier: void appendAccess(int)>($i6);	$r43 = r1.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf>;	virtualinvoke $r43.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(", ");	virtualinvoke r1.<jdk.internal.org.objectweb.asm.util.ASMifier: void appendConstant(java.lang.Object)>(r0);	$r44 = r1.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf>;	virtualinvoke $r44.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(", ");	virtualinvoke r1.<jdk.internal.org.objectweb.asm.util.ASMifier: void appendConstant(java.lang.Object)>(r26);	$r45 = r1.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf>;	virtualinvoke $r45.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(", ");	virtualinvoke r1.<jdk.internal.org.objectweb.asm.util.ASMifier: void appendConstant(java.lang.Object)>(r27);	$r46 = r1.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf>;	virtualinvoke $r46.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(", ");	if r28 == null goto $r29 = r1.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf>;	$r29 = r1.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf>;	virtualinvoke $r29.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("null");	$r48 = r1.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf>;	virtualinvoke $r48.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(");\n\n");	$r49 = r1.<jdk.internal.org.objectweb.asm.util.ASMifier: java.util.List text>;	$r50 = r1.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf>;	$r51 = virtualinvoke $r50.<java.lang.StringBuffer: java.lang.String toString()>();	interfaceinvoke $r49.<java.util.List: boolean add(java.lang.Object)>($r51);	return
;block_num 7