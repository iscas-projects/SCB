(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2926 0)
(declare-sort var1283 0)
(declare-sort var2865 0)
(declare-sort var677 0)
(declare-sort var233 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun lastIndexOf/-1292097097 (String Int) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun text/-10557480 (var677) var2865)
(declare-fun cast-from-var2926-to-var677 (var2926) var677)
(declare-fun var2865_add/328494887 (var2865 var233) Bool)
(declare-fun cast-from-String-to-var233 (String) var233)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun buf/-10557480 (var677) String)
(declare-fun setLength/163251007 (String Int) void)
(define-fun append/1560614132 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/1845021834 (String Int) String)
(declare-fun appendAccess/732682052 (var2926 Int) void)
(declare-fun appendConstant/2119113448 (var2926 var233) void)
(define-fun toString/-222306083 ((s String)) String s)
(declare-const null-var2926 var2926)
(declare-const null-Int Int)
(declare-const null-String String)
(declare-const null-__Array__Int__String__ (Array Int String))
(declare-const var2785 var2926) ; Statement: r1 := @this: jdk.internal.org.objectweb.asm.util.ASMifier 
(assert (not (= var2785 null-var2926)))
(declare-const var176 Int) ; Statement: i2 := @parameter0: int 
(assert (not (= var176 null-Int)))
(declare-const var3426 Int) ; Statement: i3 := @parameter1: int 
(assert (not (= var3426 null-Int)))
(declare-const var3169 String) ; Statement: r0 := @parameter2: java.lang.String 
(assert (not (= var3169 null-String)))
(declare-const var2328 String) ; Statement: r26 := @parameter3: java.lang.String 
(assert (not (= var2328 null-String)))
(declare-const var2426 String) ; Statement: r27 := @parameter4: java.lang.String 
(assert (not (= var2426 null-String)))
(declare-const var2347 (Array Int String)) ; Statement: r28 := @parameter5: java.lang.String[] 
(assert (not (= var2347 null-__Array__Int__String__)))
(assert true)
(define-const var244 Int (lastIndexOf/-1292097097 var3169 47)) ; Statement: i0 = virtualinvoke r0.<java.lang.String: int lastIndexOf(int)>(47) 
(define-const var1958 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i9 = (int) -1 
 ; Statement: if i0 != $i9 goto $r3 = r1.<jdk.internal.org.objectweb.asm.util.ASMifier: java.util.List text> 
(assert (not (not (= var244 var1958)))) ; Negate: Cond: i0 != $i9  
(define-const var2033 String var3169) ; Statement: r41 = r0 
 ; Statement: goto [?= $r10 = r1.<jdk.internal.org.objectweb.asm.util.ASMifier: java.util.List text>] 
(assert true) ; Non Conditional
(define-const var2153 var2865 (text/-10557480 (cast-from-var2926-to-var677 var2785))) ; Statement: $r10 = r1.<jdk.internal.org.objectweb.asm.util.ASMifier: java.util.List text> 
;(assert (var2865_add/328494887 var2153 (cast-from-String-to-var233 "import java.util.*;\n"))) ; Statement: interfaceinvoke $r10.<java.util.List: boolean add(java.lang.Object)>("import java.util.*;\n") 

(declare-const var2153!1 var2865)
(declare-const var2796 String)
(define-const var1038 var2865 (text/-10557480 (cast-from-var2926-to-var677 var2785))) ; Statement: $r11 = r1.<jdk.internal.org.objectweb.asm.util.ASMifier: java.util.List text> 
;(assert (var2865_add/328494887 var1038 (cast-from-String-to-var233 "import jdk.internal.org.objectweb.asm.*;\n"))) ; Statement: interfaceinvoke $r11.<java.util.List: boolean add(java.lang.Object)>("import jdk.internal.org.objectweb.asm.*;\n") 

(declare-const var1038!1 var2865)
(declare-const var2539 String)
(define-const var1444 var2865 (text/-10557480 (cast-from-var2926-to-var677 var2785))) ; Statement: $r13 = r1.<jdk.internal.org.objectweb.asm.util.ASMifier: java.util.List text> 
(define-const var1422 String String-init) ; Statement: $r53 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1422)) ; Statement: specialinvoke $r53.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1422!1 String)
(assert (= var1422!1 ""))
(assert true)
(define-const var1664 String (append/672562846 var1422!1 "public class ")) ; Statement: $r14 = virtualinvoke $r53.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("public class ") 
(declare-const var1422!2 String)
(assert (= var1422!2 (str.++ var1422!1 "public class ")))
(assert true)
(define-const var274 String (append/672562846 var1664 var2033)) ; Statement: $r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r41) 
(declare-const var1664!1 String)
(assert (= var1664!1 (str.++ var1664 var2033)))
(assert true)
(define-const var2309 String (append/672562846 var274 "Dump implements Opcodes {\n\n")) ; Statement: $r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Dump implements Opcodes {\n\n") 
(declare-const var274!1 String)
(assert (= var274!1 (str.++ var274 "Dump implements Opcodes {\n\n")))
(assert true)
(define-const var2883 String (toString/-2075883882 var2309)) ; Statement: $r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.String toString()>() 
;(assert (var2865_add/328494887 var1444 (cast-from-String-to-var233 var2883))) ; Statement: interfaceinvoke $r13.<java.util.List: boolean add(java.lang.Object)>($r17) 

(declare-const var1444!1 var2865)
(declare-const var2883!1 String)
(define-const var2485 var2865 (text/-10557480 (cast-from-var2926-to-var677 var2785))) ; Statement: $r18 = r1.<jdk.internal.org.objectweb.asm.util.ASMifier: java.util.List text> 
;(assert (var2865_add/328494887 var2485 (cast-from-String-to-var233 "public static byte[] dump () throws Exception {\n\n"))) ; Statement: interfaceinvoke $r18.<java.util.List: boolean add(java.lang.Object)>("public static byte[] dump () throws Exception {\n\n") 

(declare-const var2485!1 var2865)
(declare-const var2084 String)
(define-const var3729 var2865 (text/-10557480 (cast-from-var2926-to-var677 var2785))) ; Statement: $r19 = r1.<jdk.internal.org.objectweb.asm.util.ASMifier: java.util.List text> 
;(assert (var2865_add/328494887 var3729 (cast-from-String-to-var233 "ClassWriter cw = new ClassWriter(0);\n"))) ; Statement: interfaceinvoke $r19.<java.util.List: boolean add(java.lang.Object)>("ClassWriter cw = new ClassWriter(0);\n") 

(declare-const var3729!1 var2865)
(declare-const var27 String)
(define-const var3129 var2865 (text/-10557480 (cast-from-var2926-to-var677 var2785))) ; Statement: $r20 = r1.<jdk.internal.org.objectweb.asm.util.ASMifier: java.util.List text> 
;(assert (var2865_add/328494887 var3129 (cast-from-String-to-var233 "FieldVisitor fv;\n"))) ; Statement: interfaceinvoke $r20.<java.util.List: boolean add(java.lang.Object)>("FieldVisitor fv;\n") 

(declare-const var3129!1 var2865)
(declare-const var1395 String)
(define-const var1810 var2865 (text/-10557480 (cast-from-var2926-to-var677 var2785))) ; Statement: $r21 = r1.<jdk.internal.org.objectweb.asm.util.ASMifier: java.util.List text> 
;(assert (var2865_add/328494887 var1810 (cast-from-String-to-var233 "MethodVisitor mv;\n"))) ; Statement: interfaceinvoke $r21.<java.util.List: boolean add(java.lang.Object)>("MethodVisitor mv;\n") 

(declare-const var1810!1 var2865)
(declare-const var3784 String)
(define-const var2233 var2865 (text/-10557480 (cast-from-var2926-to-var677 var2785))) ; Statement: $r22 = r1.<jdk.internal.org.objectweb.asm.util.ASMifier: java.util.List text> 
;(assert (var2865_add/328494887 var2233 (cast-from-String-to-var233 "AnnotationVisitor av0;\n\n"))) ; Statement: interfaceinvoke $r22.<java.util.List: boolean add(java.lang.Object)>("AnnotationVisitor av0;\n\n") 

(declare-const var2233!1 var2865)
(declare-const var955 String)
(define-const var3666 String (buf/-10557480 (cast-from-var2926-to-var677 var2785))) ; Statement: $r23 = r1.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf> 
(assert true)
;(assert (setLength/163251007 var3666 0)) ; Statement: virtualinvoke $r23.<java.lang.StringBuffer: void setLength(int)>(0) 

(declare-const var3666!1 String)
(declare-const var1783 Int)
(define-const var516 String (buf/-10557480 (cast-from-var2926-to-var677 var2785))) ; Statement: $r24 = r1.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf> 
(assert true)
;(assert (append/1560614132 var516 "cw.visit(")) ; Statement: virtualinvoke $r24.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("cw.visit(") 
(declare-const var516!1 String)
(assert (str.prefixof var516 var516!1))
 ; Statement: lookupswitch(i2) {     case 46: goto $r39 = r1.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf>;     case 47: goto $r38 = r1.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf>;     case 48: goto $r37 = r1.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf>;     case 49: goto $r36 = r1.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf>;     case 50: goto $r35 = r1.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf>;     case 51: goto $r34 = r1.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf>;     case 196653: goto $r25 = r1.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf>;     default: goto $r40 = r1.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf>; } 
(assert (and (not (= var176 196653)) (and (not (= var176 51)) (and (not (= var176 50)) (and (not (= var176 49)) (and (not (= var176 48)) (and (not (= var176 47)) (and (not (= var176 46)) true)))))))) ; Intersect: Negate: Cond: i2 == 196653   and Intersect: Negate: Cond: i2 == 51   and Intersect: Negate: Cond: i2 == 50   and Intersect: Negate: Cond: i2 == 49   and Intersect: Negate: Cond: i2 == 48   and Intersect: Negate: Cond: i2 == 47   and Intersect: Negate: Cond: i2 == 46   and Non Conditional       
(define-const var758 String (buf/-10557480 (cast-from-var2926-to-var677 var2785))) ; Statement: $r40 = r1.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf> 
(assert true)
;(assert (append/1845021834 var758 var176)) ; Statement: virtualinvoke $r40.<java.lang.StringBuffer: java.lang.StringBuffer append(int)>(i2) 

(declare-const var758!1 String)
(declare-const var176!1 Int)
(assert true) ; Non Conditional
(define-const var1331 String (buf/-10557480 (cast-from-var2926-to-var677 var2785))) ; Statement: $r42 = r1.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf> 
(assert true)
;(assert (append/1560614132 var1331 ", ")) ; Statement: virtualinvoke $r42.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(", ") 
(declare-const var1331!1 String)
(assert (str.prefixof var1331 var1331!1))
(define-const var3418 Int (bv2nat (bvor ((_ int2bv 64) var3426) ((_ int2bv 64) 262144)))) ; Statement: $i6 = i3 | 262144 
(assert true)
;(assert (appendAccess/732682052 var2785 var3418)) ; Statement: virtualinvoke r1.<jdk.internal.org.objectweb.asm.util.ASMifier: void appendAccess(int)>($i6) 

(declare-const var2785!1 var2926)
(declare-const var3418!1 Int)
(define-const var115 String (buf/-10557480 (cast-from-var2926-to-var677 var2785!1))) ; Statement: $r43 = r1.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf> 
(assert true)
;(assert (append/1560614132 var115 ", ")) ; Statement: virtualinvoke $r43.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(", ") 
(declare-const var115!1 String)
(assert (str.prefixof var115 var115!1))
(assert true)
;(assert (appendConstant/2119113448 var2785!1 (cast-from-String-to-var233 var3169))) ; Statement: virtualinvoke r1.<jdk.internal.org.objectweb.asm.util.ASMifier: void appendConstant(java.lang.Object)>(r0) 

(declare-const var2785!2 var2926)
(declare-const var3169!1 String)
(define-const var3674 String (buf/-10557480 (cast-from-var2926-to-var677 var2785!2))) ; Statement: $r44 = r1.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf> 
(assert true)
;(assert (append/1560614132 var3674 ", ")) ; Statement: virtualinvoke $r44.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(", ") 
(declare-const var3674!1 String)
(assert (str.prefixof var3674 var3674!1))
(assert true)
;(assert (appendConstant/2119113448 var2785!2 (cast-from-String-to-var233 var2328))) ; Statement: virtualinvoke r1.<jdk.internal.org.objectweb.asm.util.ASMifier: void appendConstant(java.lang.Object)>(r26) 

(declare-const var2785!3 var2926)
(declare-const var2328!1 String)
(define-const var2517 String (buf/-10557480 (cast-from-var2926-to-var677 var2785!3))) ; Statement: $r45 = r1.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf> 
(assert true)
;(assert (append/1560614132 var2517 ", ")) ; Statement: virtualinvoke $r45.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(", ") 
(declare-const var2517!1 String)
(assert (str.prefixof var2517 var2517!1))
(assert true)
;(assert (appendConstant/2119113448 var2785!3 (cast-from-String-to-var233 var2426))) ; Statement: virtualinvoke r1.<jdk.internal.org.objectweb.asm.util.ASMifier: void appendConstant(java.lang.Object)>(r27) 

(declare-const var2785!4 var2926)
(declare-const var2426!1 String)
(define-const var1222 String (buf/-10557480 (cast-from-var2926-to-var677 var2785!4))) ; Statement: $r46 = r1.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf> 
(assert true)
;(assert (append/1560614132 var1222 ", ")) ; Statement: virtualinvoke $r46.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(", ") 
(declare-const var1222!1 String)
(assert (str.prefixof var1222 var1222!1))
 ; Statement: if r28 == null goto $r29 = r1.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf> 
(assert (= var2347 null-__Array__Int__String__)) ; Cond: r28 == null 
(define-const var697 String (buf/-10557480 (cast-from-var2926-to-var677 var2785!4))) ; Statement: $r29 = r1.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf> 
(assert true)
;(assert (append/1560614132 var697 "null")) ; Statement: virtualinvoke $r29.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("null") 
(declare-const var697!1 String)
(assert (str.prefixof var697 var697!1))
(assert true) ; Non Conditional
(define-const var848 String (buf/-10557480 (cast-from-var2926-to-var677 var2785!4))) ; Statement: $r48 = r1.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf> 
(assert true)
;(assert (append/1560614132 var848 ");\n\n")) ; Statement: virtualinvoke $r48.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(");\n\n") 
(declare-const var848!1 String)
(assert (str.prefixof var848 var848!1))
(define-const var561 var2865 (text/-10557480 (cast-from-var2926-to-var677 var2785!4))) ; Statement: $r49 = r1.<jdk.internal.org.objectweb.asm.util.ASMifier: java.util.List text> 
(define-const var2138 String (buf/-10557480 (cast-from-var2926-to-var677 var2785!4))) ; Statement: $r50 = r1.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf> 
(assert true)
(define-const var1035 String (toString/-222306083 var2138)) ; Statement: $r51 = virtualinvoke $r50.<java.lang.StringBuffer: java.lang.String toString()>() 
;(assert (var2865_add/328494887 var561 (cast-from-String-to-var233 var1035))) ; Statement: interfaceinvoke $r49.<java.util.List: boolean add(java.lang.Object)>($r51) 

(declare-const var561!1 var2865)
(declare-const var1035!1 String)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {lastIndexOf/-1292097097=([java.lang.String, int], int), cast-from-Int-to-Int=([int], int), text/-10557480=([jdk.internal.org.objectweb.asm.util.Printer], java.util.List), cast-from-var2926-to-var677=([jdk.internal.org.objectweb.asm.util.ASMifier], jdk.internal.org.objectweb.asm.util.Printer), var2865_add/328494887=([java.util.List, java.lang.Object], boolean), cast-from-String-to-var233=([java.lang.String], java.lang.Object), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), buf/-10557480=([jdk.internal.org.objectweb.asm.util.Printer], java.lang.StringBuffer), setLength/163251007=([java.lang.StringBuffer, int], void), append/1560614132=([java.lang.StringBuffer, java.lang.String], java.lang.StringBuffer), append/1845021834=([java.lang.StringBuffer, int], java.lang.StringBuffer), appendAccess/732682052=([jdk.internal.org.objectweb.asm.util.ASMifier, int], void), appendConstant/2119113448=([jdk.internal.org.objectweb.asm.util.ASMifier, java.lang.Object], void), toString/-222306083=([java.lang.StringBuffer], java.lang.String)}
; {var2926=jdk.internal.org.objectweb.asm.util.ASMifier, var2785=r1, var176=i2, var3426=i3, var3169=r0, var1283=null_type, var2328=r26, var2426=r27, var2347=r28, var244=i0, var1958=$i9, var2033=r41, var2865=java.util.List, var677=jdk.internal.org.objectweb.asm.util.Printer, var2153=$r10, var233=java.lang.Object, var2796="import java.util.*;\n", var1038=$r11, var2539="import jdk.internal.org.objectweb.asm.*;\n", var1444=$r13, var1422=$r53, var1664=$r14, var274=$r15, var2309=$r16, var2883=$r17, var2485=$r18, var2084="public static byte[] dump () throws Exception {\n\n", var3729=$r19, var27="ClassWriter cw = new ClassWriter(0);\n", var3129=$r20, var1395="FieldVisitor fv;\n", var1810=$r21, var3784="MethodVisitor mv;\n", var2233=$r22, var955="AnnotationVisitor av0;\n\n", var3666=$r23, var1783=0, var516=$r24, var758=$r40, var1331=$r42, var3418=$i6, var115=$r43, var3674=$r44, var2517=$r45, var1222=$r46, var697=$r29, var848=$r48, var561=$r49, var2138=$r50, var1035=$r51}
; {jdk.internal.org.objectweb.asm.util.ASMifier=var2926, r1=var2785, i2=var176, i3=var3426, r0=var3169, null_type=var1283, r26=var2328, r27=var2426, r28=var2347, i0=var244, $i9=var1958, r41=var2033, java.util.List=var2865, jdk.internal.org.objectweb.asm.util.Printer=var677, $r10=var2153, java.lang.Object=var233, "import java.util.*;\n"=var2796, $r11=var1038, "import jdk.internal.org.objectweb.asm.*;\n"=var2539, $r13=var1444, $r53=var1422, $r14=var1664, $r15=var274, $r16=var2309, $r17=var2883, $r18=var2485, "public static byte[] dump () throws Exception {\n\n"=var2084, $r19=var3729, "ClassWriter cw = new ClassWriter(0);\n"=var27, $r20=var3129, "FieldVisitor fv;\n"=var1395, $r21=var1810, "MethodVisitor mv;\n"=var3784, $r22=var2233, "AnnotationVisitor av0;\n\n"=var955, $r23=var3666, 0=var1783, $r24=var516, $r40=var758, $r42=var1331, $i6=var3418, $r43=var115, $r44=var3674, $r45=var2517, $r46=var1222, $r29=var697, $r48=var848, $r49=var561, $r50=var2138, $r51=var1035}
;seq <java.lang.String: int lastIndexOf(int)>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuffer: void setLength(int)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(int)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.String toString()>
;cnt {"<java.lang.String: int lastIndexOf(int)>": 1,"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1,"<java.lang.StringBuffer: void setLength(int)>": 1,"<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>": 8,"<java.lang.StringBuffer: java.lang.StringBuffer append(int)>": 1,"<java.lang.StringBuffer: java.lang.String toString()>": 1}
;stmts r1 := @this: jdk.internal.org.objectweb.asm.util.ASMifier;	i2 := @parameter0: int;	i3 := @parameter1: int;	r0 := @parameter2: java.lang.String;	r26 := @parameter3: java.lang.String;	r27 := @parameter4: java.lang.String;	r28 := @parameter5: java.lang.String[];	i0 = virtualinvoke r0.<java.lang.String: int lastIndexOf(int)>(47);	$i9 = (int) -1;	if i0 != $i9 goto $r3 = r1.<jdk.internal.org.objectweb.asm.util.ASMifier: java.util.List text>;	r41 = r0;	goto [?= $r10 = r1.<jdk.internal.org.objectweb.asm.util.ASMifier: java.util.List text>];	$r10 = r1.<jdk.internal.org.objectweb.asm.util.ASMifier: java.util.List text>;	interfaceinvoke $r10.<java.util.List: boolean add(java.lang.Object)>("import java.util.*;\n");	$r11 = r1.<jdk.internal.org.objectweb.asm.util.ASMifier: java.util.List text>;	interfaceinvoke $r11.<java.util.List: boolean add(java.lang.Object)>("import jdk.internal.org.objectweb.asm.*;\n");	$r13 = r1.<jdk.internal.org.objectweb.asm.util.ASMifier: java.util.List text>;	$r53 = new java.lang.StringBuilder;	specialinvoke $r53.<java.lang.StringBuilder: void <init>()>();	$r14 = virtualinvoke $r53.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("public class ");	$r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r41);	$r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Dump implements Opcodes {\n\n");	$r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.String toString()>();	interfaceinvoke $r13.<java.util.List: boolean add(java.lang.Object)>($r17);	$r18 = r1.<jdk.internal.org.objectweb.asm.util.ASMifier: java.util.List text>;	interfaceinvoke $r18.<java.util.List: boolean add(java.lang.Object)>("public static byte[] dump () throws Exception {\n\n");	$r19 = r1.<jdk.internal.org.objectweb.asm.util.ASMifier: java.util.List text>;	interfaceinvoke $r19.<java.util.List: boolean add(java.lang.Object)>("ClassWriter cw = new ClassWriter(0);\n");	$r20 = r1.<jdk.internal.org.objectweb.asm.util.ASMifier: java.util.List text>;	interfaceinvoke $r20.<java.util.List: boolean add(java.lang.Object)>("FieldVisitor fv;\n");	$r21 = r1.<jdk.internal.org.objectweb.asm.util.ASMifier: java.util.List text>;	interfaceinvoke $r21.<java.util.List: boolean add(java.lang.Object)>("MethodVisitor mv;\n");	$r22 = r1.<jdk.internal.org.objectweb.asm.util.ASMifier: java.util.List text>;	interfaceinvoke $r22.<java.util.List: boolean add(java.lang.Object)>("AnnotationVisitor av0;\n\n");	$r23 = r1.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf>;	virtualinvoke $r23.<java.lang.StringBuffer: void setLength(int)>(0);	$r24 = r1.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf>;	virtualinvoke $r24.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("cw.visit(");	lookupswitch(i2) {     case 46: goto $r39 = r1.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf>;     case 47: goto $r38 = r1.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf>;     case 48: goto $r37 = r1.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf>;     case 49: goto $r36 = r1.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf>;     case 50: goto $r35 = r1.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf>;     case 51: goto $r34 = r1.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf>;     case 196653: goto $r25 = r1.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf>;     default: goto $r40 = r1.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf>; };	$r40 = r1.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf>;	virtualinvoke $r40.<java.lang.StringBuffer: java.lang.StringBuffer append(int)>(i2);	$r42 = r1.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf>;	virtualinvoke $r42.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(", ");	$i6 = i3 | 262144;	virtualinvoke r1.<jdk.internal.org.objectweb.asm.util.ASMifier: void appendAccess(int)>($i6);	$r43 = r1.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf>;	virtualinvoke $r43.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(", ");	virtualinvoke r1.<jdk.internal.org.objectweb.asm.util.ASMifier: void appendConstant(java.lang.Object)>(r0);	$r44 = r1.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf>;	virtualinvoke $r44.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(", ");	virtualinvoke r1.<jdk.internal.org.objectweb.asm.util.ASMifier: void appendConstant(java.lang.Object)>(r26);	$r45 = r1.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf>;	virtualinvoke $r45.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(", ");	virtualinvoke r1.<jdk.internal.org.objectweb.asm.util.ASMifier: void appendConstant(java.lang.Object)>(r27);	$r46 = r1.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf>;	virtualinvoke $r46.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(", ");	if r28 == null goto $r29 = r1.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf>;	$r29 = r1.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf>;	virtualinvoke $r29.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("null");	$r48 = r1.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf>;	virtualinvoke $r48.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(");\n\n");	$r49 = r1.<jdk.internal.org.objectweb.asm.util.ASMifier: java.util.List text>;	$r50 = r1.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf>;	$r51 = virtualinvoke $r50.<java.lang.StringBuffer: java.lang.String toString()>();	interfaceinvoke $r49.<java.util.List: boolean add(java.lang.Object)>($r51);	return
;block_num 7