(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2727 0)
(declare-sort var326 0)
(declare-sort var3900 0)
(declare-sort var1539 0)
(declare-sort var2460 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun lastIndexOf/-1292097097 (String Int) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun text/-10557480 (var1539) var3900)
(declare-fun cast-from-var2727-to-var1539 (var2727) var1539)
(declare-fun var3900_add/328494887 (var3900 var2460) Bool)
(declare-fun cast-from-String-to-var2460 (String) var2460)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun buf/-10557480 (var1539) String)
(declare-fun setLength/163251007 (String Int) void)
(define-fun append/1560614132 ((s String) (tail String)) String (str.++ s tail))
(declare-fun appendAccess/732682052 (var2727 Int) void)
(declare-fun appendConstant/2119113448 (var2727 var2460) void)
(define-fun toString/-222306083 ((s String)) String s)
(declare-const null-var2727 var2727)
(declare-const null-Int Int)
(declare-const null-String String)
(declare-const null-__Array__Int__String__ (Array Int String))
(declare-const var3316 var2727) ; Statement: r1 := @this: jdk.internal.org.objectweb.asm.util.ASMifier 
(assert (not (= var3316 null-var2727)))
(declare-const var64 Int) ; Statement: i2 := @parameter0: int 
(assert (not (= var64 null-Int)))
(declare-const var3742 Int) ; Statement: i3 := @parameter1: int 
(assert (not (= var3742 null-Int)))
(declare-const var3319 String) ; Statement: r0 := @parameter2: java.lang.String 
(assert (not (= var3319 null-String)))
(declare-const var3683 String) ; Statement: r26 := @parameter3: java.lang.String 
(assert (not (= var3683 null-String)))
(declare-const var612 String) ; Statement: r27 := @parameter4: java.lang.String 
(assert (not (= var612 null-String)))
(declare-const var3946 (Array Int String)) ; Statement: r28 := @parameter5: java.lang.String[] 
(assert (not (= var3946 null-__Array__Int__String__)))
(assert true)
(define-const var1961 Int (lastIndexOf/-1292097097 var3319 47)) ; Statement: i0 = virtualinvoke r0.<java.lang.String: int lastIndexOf(int)>(47) 
(define-const var1024 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i9 = (int) -1 
 ; Statement: if i0 != $i9 goto $r3 = r1.<jdk.internal.org.objectweb.asm.util.ASMifier: java.util.List text> 
(assert (not (not (= var1961 var1024)))) ; Negate: Cond: i0 != $i9  
(define-const var3763 String var3319) ; Statement: r41 = r0 
 ; Statement: goto [?= $r10 = r1.<jdk.internal.org.objectweb.asm.util.ASMifier: java.util.List text>] 
(assert true) ; Non Conditional
(define-const var1377 var3900 (text/-10557480 (cast-from-var2727-to-var1539 var3316))) ; Statement: $r10 = r1.<jdk.internal.org.objectweb.asm.util.ASMifier: java.util.List text> 
;(assert (var3900_add/328494887 var1377 (cast-from-String-to-var2460 "import java.util.*;\n"))) ; Statement: interfaceinvoke $r10.<java.util.List: boolean add(java.lang.Object)>("import java.util.*;\n") 

(declare-const var1377!1 var3900)
(declare-const var147 String)
(define-const var3367 var3900 (text/-10557480 (cast-from-var2727-to-var1539 var3316))) ; Statement: $r11 = r1.<jdk.internal.org.objectweb.asm.util.ASMifier: java.util.List text> 
;(assert (var3900_add/328494887 var3367 (cast-from-String-to-var2460 "import jdk.internal.org.objectweb.asm.*;\n"))) ; Statement: interfaceinvoke $r11.<java.util.List: boolean add(java.lang.Object)>("import jdk.internal.org.objectweb.asm.*;\n") 

(declare-const var3367!1 var3900)
(declare-const var349 String)
(define-const var2112 var3900 (text/-10557480 (cast-from-var2727-to-var1539 var3316))) ; Statement: $r13 = r1.<jdk.internal.org.objectweb.asm.util.ASMifier: java.util.List text> 
(define-const var3348 String String-init) ; Statement: $r53 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3348)) ; Statement: specialinvoke $r53.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3348!1 String)
(assert (= var3348!1 ""))
(assert true)
(define-const var1267 String (append/672562846 var3348!1 "public class ")) ; Statement: $r14 = virtualinvoke $r53.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("public class ") 
(declare-const var3348!2 String)
(assert (= var3348!2 (str.++ var3348!1 "public class ")))
(assert true)
(define-const var3838 String (append/672562846 var1267 var3763)) ; Statement: $r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r41) 
(declare-const var1267!1 String)
(assert (= var1267!1 (str.++ var1267 var3763)))
(assert true)
(define-const var3738 String (append/672562846 var3838 "Dump implements Opcodes {\n\n")) ; Statement: $r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Dump implements Opcodes {\n\n") 
(declare-const var3838!1 String)
(assert (= var3838!1 (str.++ var3838 "Dump implements Opcodes {\n\n")))
(assert true)
(define-const var63 String (toString/-2075883882 var3738)) ; Statement: $r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.String toString()>() 
;(assert (var3900_add/328494887 var2112 (cast-from-String-to-var2460 var63))) ; Statement: interfaceinvoke $r13.<java.util.List: boolean add(java.lang.Object)>($r17) 

(declare-const var2112!1 var3900)
(declare-const var63!1 String)
(define-const var2063 var3900 (text/-10557480 (cast-from-var2727-to-var1539 var3316))) ; Statement: $r18 = r1.<jdk.internal.org.objectweb.asm.util.ASMifier: java.util.List text> 
;(assert (var3900_add/328494887 var2063 (cast-from-String-to-var2460 "public static byte[] dump () throws Exception {\n\n"))) ; Statement: interfaceinvoke $r18.<java.util.List: boolean add(java.lang.Object)>("public static byte[] dump () throws Exception {\n\n") 

(declare-const var2063!1 var3900)
(declare-const var2904 String)
(define-const var1895 var3900 (text/-10557480 (cast-from-var2727-to-var1539 var3316))) ; Statement: $r19 = r1.<jdk.internal.org.objectweb.asm.util.ASMifier: java.util.List text> 
;(assert (var3900_add/328494887 var1895 (cast-from-String-to-var2460 "ClassWriter cw = new ClassWriter(0);\n"))) ; Statement: interfaceinvoke $r19.<java.util.List: boolean add(java.lang.Object)>("ClassWriter cw = new ClassWriter(0);\n") 

(declare-const var1895!1 var3900)
(declare-const var1531 String)
(define-const var179 var3900 (text/-10557480 (cast-from-var2727-to-var1539 var3316))) ; Statement: $r20 = r1.<jdk.internal.org.objectweb.asm.util.ASMifier: java.util.List text> 
;(assert (var3900_add/328494887 var179 (cast-from-String-to-var2460 "FieldVisitor fv;\n"))) ; Statement: interfaceinvoke $r20.<java.util.List: boolean add(java.lang.Object)>("FieldVisitor fv;\n") 

(declare-const var179!1 var3900)
(declare-const var3270 String)
(define-const var3540 var3900 (text/-10557480 (cast-from-var2727-to-var1539 var3316))) ; Statement: $r21 = r1.<jdk.internal.org.objectweb.asm.util.ASMifier: java.util.List text> 
;(assert (var3900_add/328494887 var3540 (cast-from-String-to-var2460 "MethodVisitor mv;\n"))) ; Statement: interfaceinvoke $r21.<java.util.List: boolean add(java.lang.Object)>("MethodVisitor mv;\n") 

(declare-const var3540!1 var3900)
(declare-const var3154 String)
(define-const var2407 var3900 (text/-10557480 (cast-from-var2727-to-var1539 var3316))) ; Statement: $r22 = r1.<jdk.internal.org.objectweb.asm.util.ASMifier: java.util.List text> 
;(assert (var3900_add/328494887 var2407 (cast-from-String-to-var2460 "AnnotationVisitor av0;\n\n"))) ; Statement: interfaceinvoke $r22.<java.util.List: boolean add(java.lang.Object)>("AnnotationVisitor av0;\n\n") 

(declare-const var2407!1 var3900)
(declare-const var3494 String)
(define-const var225 String (buf/-10557480 (cast-from-var2727-to-var1539 var3316))) ; Statement: $r23 = r1.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf> 
(assert true)
;(assert (setLength/163251007 var225 0)) ; Statement: virtualinvoke $r23.<java.lang.StringBuffer: void setLength(int)>(0) 

(declare-const var225!1 String)
(declare-const var641 Int)
(define-const var1875 String (buf/-10557480 (cast-from-var2727-to-var1539 var3316))) ; Statement: $r24 = r1.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf> 
(assert true)
;(assert (append/1560614132 var1875 "cw.visit(")) ; Statement: virtualinvoke $r24.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("cw.visit(") 
(declare-const var1875!1 String)
(assert (str.prefixof var1875 var1875!1))
 ; Statement: lookupswitch(i2) {     case 46: goto $r39 = r1.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf>;     case 47: goto $r38 = r1.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf>;     case 48: goto $r37 = r1.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf>;     case 49: goto $r36 = r1.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf>;     case 50: goto $r35 = r1.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf>;     case 51: goto $r34 = r1.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf>;     case 196653: goto $r25 = r1.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf>;     default: goto $r40 = r1.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf>; } 
(assert (and (= var64 47) (and (not (= var64 46)) true))) ; Intersect: Cond: i2 == 47  and Intersect: Negate: Cond: i2 == 46   and Non Conditional  
(define-const var2235 String (buf/-10557480 (cast-from-var2727-to-var1539 var3316))) ; Statement: $r38 = r1.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf> 
(assert true)
;(assert (append/1560614132 var2235 "V1_3")) ; Statement: virtualinvoke $r38.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("V1_3") 
(declare-const var2235!1 String)
(assert (str.prefixof var2235 var2235!1))
 ; Statement: goto [?= $r42 = r1.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf>] 
(assert true) ; Non Conditional
(define-const var1082 String (buf/-10557480 (cast-from-var2727-to-var1539 var3316))) ; Statement: $r42 = r1.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf> 
(assert true)
;(assert (append/1560614132 var1082 ", ")) ; Statement: virtualinvoke $r42.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(", ") 
(declare-const var1082!1 String)
(assert (str.prefixof var1082 var1082!1))
(define-const var771 Int (bv2nat (bvor ((_ int2bv 64) var3742) ((_ int2bv 64) 262144)))) ; Statement: $i6 = i3 | 262144 
(assert true)
;(assert (appendAccess/732682052 var3316 var771)) ; Statement: virtualinvoke r1.<jdk.internal.org.objectweb.asm.util.ASMifier: void appendAccess(int)>($i6) 

(declare-const var3316!1 var2727)
(declare-const var771!1 Int)
(define-const var3388 String (buf/-10557480 (cast-from-var2727-to-var1539 var3316!1))) ; Statement: $r43 = r1.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf> 
(assert true)
;(assert (append/1560614132 var3388 ", ")) ; Statement: virtualinvoke $r43.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(", ") 
(declare-const var3388!1 String)
(assert (str.prefixof var3388 var3388!1))
(assert true)
;(assert (appendConstant/2119113448 var3316!1 (cast-from-String-to-var2460 var3319))) ; Statement: virtualinvoke r1.<jdk.internal.org.objectweb.asm.util.ASMifier: void appendConstant(java.lang.Object)>(r0) 

(declare-const var3316!2 var2727)
(declare-const var3319!1 String)
(define-const var1602 String (buf/-10557480 (cast-from-var2727-to-var1539 var3316!2))) ; Statement: $r44 = r1.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf> 
(assert true)
;(assert (append/1560614132 var1602 ", ")) ; Statement: virtualinvoke $r44.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(", ") 
(declare-const var1602!1 String)
(assert (str.prefixof var1602 var1602!1))
(assert true)
;(assert (appendConstant/2119113448 var3316!2 (cast-from-String-to-var2460 var3683))) ; Statement: virtualinvoke r1.<jdk.internal.org.objectweb.asm.util.ASMifier: void appendConstant(java.lang.Object)>(r26) 

(declare-const var3316!3 var2727)
(declare-const var3683!1 String)
(define-const var2272 String (buf/-10557480 (cast-from-var2727-to-var1539 var3316!3))) ; Statement: $r45 = r1.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf> 
(assert true)
;(assert (append/1560614132 var2272 ", ")) ; Statement: virtualinvoke $r45.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(", ") 
(declare-const var2272!1 String)
(assert (str.prefixof var2272 var2272!1))
(assert true)
;(assert (appendConstant/2119113448 var3316!3 (cast-from-String-to-var2460 var612))) ; Statement: virtualinvoke r1.<jdk.internal.org.objectweb.asm.util.ASMifier: void appendConstant(java.lang.Object)>(r27) 

(declare-const var3316!4 var2727)
(declare-const var612!1 String)
(define-const var2800 String (buf/-10557480 (cast-from-var2727-to-var1539 var3316!4))) ; Statement: $r46 = r1.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf> 
(assert true)
;(assert (append/1560614132 var2800 ", ")) ; Statement: virtualinvoke $r46.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(", ") 
(declare-const var2800!1 String)
(assert (str.prefixof var2800 var2800!1))
 ; Statement: if r28 == null goto $r29 = r1.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf> 
(assert (= var3946 null-__Array__Int__String__)) ; Cond: r28 == null 
(define-const var584 String (buf/-10557480 (cast-from-var2727-to-var1539 var3316!4))) ; Statement: $r29 = r1.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf> 
(assert true)
;(assert (append/1560614132 var584 "null")) ; Statement: virtualinvoke $r29.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("null") 
(declare-const var584!1 String)
(assert (str.prefixof var584 var584!1))
(assert true) ; Non Conditional
(define-const var219 String (buf/-10557480 (cast-from-var2727-to-var1539 var3316!4))) ; Statement: $r48 = r1.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf> 
(assert true)
;(assert (append/1560614132 var219 ");\n\n")) ; Statement: virtualinvoke $r48.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(");\n\n") 
(declare-const var219!1 String)
(assert (str.prefixof var219 var219!1))
(define-const var1861 var3900 (text/-10557480 (cast-from-var2727-to-var1539 var3316!4))) ; Statement: $r49 = r1.<jdk.internal.org.objectweb.asm.util.ASMifier: java.util.List text> 
(define-const var2779 String (buf/-10557480 (cast-from-var2727-to-var1539 var3316!4))) ; Statement: $r50 = r1.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf> 
(assert true)
(define-const var2685 String (toString/-222306083 var2779)) ; Statement: $r51 = virtualinvoke $r50.<java.lang.StringBuffer: java.lang.String toString()>() 
;(assert (var3900_add/328494887 var1861 (cast-from-String-to-var2460 var2685))) ; Statement: interfaceinvoke $r49.<java.util.List: boolean add(java.lang.Object)>($r51) 

(declare-const var1861!1 var3900)
(declare-const var2685!1 String)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {lastIndexOf/-1292097097=([java.lang.String, int], int), cast-from-Int-to-Int=([int], int), text/-10557480=([jdk.internal.org.objectweb.asm.util.Printer], java.util.List), cast-from-var2727-to-var1539=([jdk.internal.org.objectweb.asm.util.ASMifier], jdk.internal.org.objectweb.asm.util.Printer), var3900_add/328494887=([java.util.List, java.lang.Object], boolean), cast-from-String-to-var2460=([java.lang.String], java.lang.Object), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), buf/-10557480=([jdk.internal.org.objectweb.asm.util.Printer], java.lang.StringBuffer), setLength/163251007=([java.lang.StringBuffer, int], void), append/1560614132=([java.lang.StringBuffer, java.lang.String], java.lang.StringBuffer), appendAccess/732682052=([jdk.internal.org.objectweb.asm.util.ASMifier, int], void), appendConstant/2119113448=([jdk.internal.org.objectweb.asm.util.ASMifier, java.lang.Object], void), toString/-222306083=([java.lang.StringBuffer], java.lang.String)}
; {var2727=jdk.internal.org.objectweb.asm.util.ASMifier, var3316=r1, var64=i2, var3742=i3, var3319=r0, var326=null_type, var3683=r26, var612=r27, var3946=r28, var1961=i0, var1024=$i9, var3763=r41, var3900=java.util.List, var1539=jdk.internal.org.objectweb.asm.util.Printer, var1377=$r10, var2460=java.lang.Object, var147="import java.util.*;\n", var3367=$r11, var349="import jdk.internal.org.objectweb.asm.*;\n", var2112=$r13, var3348=$r53, var1267=$r14, var3838=$r15, var3738=$r16, var63=$r17, var2063=$r18, var2904="public static byte[] dump () throws Exception {\n\n", var1895=$r19, var1531="ClassWriter cw = new ClassWriter(0);\n", var179=$r20, var3270="FieldVisitor fv;\n", var3540=$r21, var3154="MethodVisitor mv;\n", var2407=$r22, var3494="AnnotationVisitor av0;\n\n", var225=$r23, var641=0, var1875=$r24, var2235=$r38, var1082=$r42, var771=$i6, var3388=$r43, var1602=$r44, var2272=$r45, var2800=$r46, var584=$r29, var219=$r48, var1861=$r49, var2779=$r50, var2685=$r51}
; {jdk.internal.org.objectweb.asm.util.ASMifier=var2727, r1=var3316, i2=var64, i3=var3742, r0=var3319, null_type=var326, r26=var3683, r27=var612, r28=var3946, i0=var1961, $i9=var1024, r41=var3763, java.util.List=var3900, jdk.internal.org.objectweb.asm.util.Printer=var1539, $r10=var1377, java.lang.Object=var2460, "import java.util.*;\n"=var147, $r11=var3367, "import jdk.internal.org.objectweb.asm.*;\n"=var349, $r13=var2112, $r53=var3348, $r14=var1267, $r15=var3838, $r16=var3738, $r17=var63, $r18=var2063, "public static byte[] dump () throws Exception {\n\n"=var2904, $r19=var1895, "ClassWriter cw = new ClassWriter(0);\n"=var1531, $r20=var179, "FieldVisitor fv;\n"=var3270, $r21=var3540, "MethodVisitor mv;\n"=var3154, $r22=var2407, "AnnotationVisitor av0;\n\n"=var3494, $r23=var225, 0=var641, $r24=var1875, $r38=var2235, $r42=var1082, $i6=var771, $r43=var3388, $r44=var1602, $r45=var2272, $r46=var2800, $r29=var584, $r48=var219, $r49=var1861, $r50=var2779, $r51=var2685}
;seq <java.lang.String: int lastIndexOf(int)>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuffer: void setLength(int)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.String toString()>
;cnt {"<java.lang.String: int lastIndexOf(int)>": 1,"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1,"<java.lang.StringBuffer: void setLength(int)>": 1,"<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>": 9,"<java.lang.StringBuffer: java.lang.String toString()>": 1}
;stmts r1 := @this: jdk.internal.org.objectweb.asm.util.ASMifier;	i2 := @parameter0: int;	i3 := @parameter1: int;	r0 := @parameter2: java.lang.String;	r26 := @parameter3: java.lang.String;	r27 := @parameter4: java.lang.String;	r28 := @parameter5: java.lang.String[];	i0 = virtualinvoke r0.<java.lang.String: int lastIndexOf(int)>(47);	$i9 = (int) -1;	if i0 != $i9 goto $r3 = r1.<jdk.internal.org.objectweb.asm.util.ASMifier: java.util.List text>;	r41 = r0;	goto [?= $r10 = r1.<jdk.internal.org.objectweb.asm.util.ASMifier: java.util.List text>];	$r10 = r1.<jdk.internal.org.objectweb.asm.util.ASMifier: java.util.List text>;	interfaceinvoke $r10.<java.util.List: boolean add(java.lang.Object)>("import java.util.*;\n");	$r11 = r1.<jdk.internal.org.objectweb.asm.util.ASMifier: java.util.List text>;	interfaceinvoke $r11.<java.util.List: boolean add(java.lang.Object)>("import jdk.internal.org.objectweb.asm.*;\n");	$r13 = r1.<jdk.internal.org.objectweb.asm.util.ASMifier: java.util.List text>;	$r53 = new java.lang.StringBuilder;	specialinvoke $r53.<java.lang.StringBuilder: void <init>()>();	$r14 = virtualinvoke $r53.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("public class ");	$r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r41);	$r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Dump implements Opcodes {\n\n");	$r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.String toString()>();	interfaceinvoke $r13.<java.util.List: boolean add(java.lang.Object)>($r17);	$r18 = r1.<jdk.internal.org.objectweb.asm.util.ASMifier: java.util.List text>;	interfaceinvoke $r18.<java.util.List: boolean add(java.lang.Object)>("public static byte[] dump () throws Exception {\n\n");	$r19 = r1.<jdk.internal.org.objectweb.asm.util.ASMifier: java.util.List text>;	interfaceinvoke $r19.<java.util.List: boolean add(java.lang.Object)>("ClassWriter cw = new ClassWriter(0);\n");	$r20 = r1.<jdk.internal.org.objectweb.asm.util.ASMifier: java.util.List text>;	interfaceinvoke $r20.<java.util.List: boolean add(java.lang.Object)>("FieldVisitor fv;\n");	$r21 = r1.<jdk.internal.org.objectweb.asm.util.ASMifier: java.util.List text>;	interfaceinvoke $r21.<java.util.List: boolean add(java.lang.Object)>("MethodVisitor mv;\n");	$r22 = r1.<jdk.internal.org.objectweb.asm.util.ASMifier: java.util.List text>;	interfaceinvoke $r22.<java.util.List: boolean add(java.lang.Object)>("AnnotationVisitor av0;\n\n");	$r23 = r1.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf>;	virtualinvoke $r23.<java.lang.StringBuffer: void setLength(int)>(0);	$r24 = r1.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf>;	virtualinvoke $r24.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("cw.visit(");	lookupswitch(i2) {     case 46: goto $r39 = r1.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf>;     case 47: goto $r38 = r1.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf>;     case 48: goto $r37 = r1.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf>;     case 49: goto $r36 = r1.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf>;     case 50: goto $r35 = r1.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf>;     case 51: goto $r34 = r1.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf>;     case 196653: goto $r25 = r1.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf>;     default: goto $r40 = r1.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf>; };	$r38 = r1.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf>;	virtualinvoke $r38.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("V1_3");	goto [?= $r42 = r1.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf>];	$r42 = r1.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf>;	virtualinvoke $r42.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(", ");	$i6 = i3 | 262144;	virtualinvoke r1.<jdk.internal.org.objectweb.asm.util.ASMifier: void appendAccess(int)>($i6);	$r43 = r1.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf>;	virtualinvoke $r43.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(", ");	virtualinvoke r1.<jdk.internal.org.objectweb.asm.util.ASMifier: void appendConstant(java.lang.Object)>(r0);	$r44 = r1.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf>;	virtualinvoke $r44.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(", ");	virtualinvoke r1.<jdk.internal.org.objectweb.asm.util.ASMifier: void appendConstant(java.lang.Object)>(r26);	$r45 = r1.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf>;	virtualinvoke $r45.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(", ");	virtualinvoke r1.<jdk.internal.org.objectweb.asm.util.ASMifier: void appendConstant(java.lang.Object)>(r27);	$r46 = r1.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf>;	virtualinvoke $r46.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(", ");	if r28 == null goto $r29 = r1.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf>;	$r29 = r1.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf>;	virtualinvoke $r29.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("null");	$r48 = r1.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf>;	virtualinvoke $r48.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(");\n\n");	$r49 = r1.<jdk.internal.org.objectweb.asm.util.ASMifier: java.util.List text>;	$r50 = r1.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf>;	$r51 = virtualinvoke $r50.<java.lang.StringBuffer: java.lang.String toString()>();	interfaceinvoke $r49.<java.util.List: boolean add(java.lang.Object)>($r51);	return
;block_num 7