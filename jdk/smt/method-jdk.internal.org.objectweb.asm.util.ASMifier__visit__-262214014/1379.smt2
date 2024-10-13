(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1351 0)
(declare-sort var2944 0)
(declare-sort var62 0)
(declare-sort var560 0)
(declare-sort var2364 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun lastIndexOf/-1292097097 (String Int) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun text/-10557480 (var560) var62)
(declare-fun cast-from-var1351-to-var560 (var1351) var560)
(declare-fun var62_add/328494887 (var62 var2364) Bool)
(declare-fun cast-from-String-to-var2364 (String) var2364)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun buf/-10557480 (var560) String)
(declare-fun setLength/163251007 (String Int) void)
(define-fun append/1560614132 ((s String) (tail String)) String (str.++ s tail))
(declare-fun appendAccess/732682052 (var1351 Int) void)
(declare-fun appendConstant/2119113448 (var1351 var2364) void)
(define-fun toString/-222306083 ((s String)) String s)
(declare-const null-var1351 var1351)
(declare-const null-Int Int)
(declare-const null-String String)
(declare-const null-__Array__Int__String__ (Array Int String))
(declare-const var1449 var1351) ; Statement: r1 := @this: jdk.internal.org.objectweb.asm.util.ASMifier 
(assert (not (= var1449 null-var1351)))
(declare-const var1320 Int) ; Statement: i2 := @parameter0: int 
(assert (not (= var1320 null-Int)))
(declare-const var3026 Int) ; Statement: i3 := @parameter1: int 
(assert (not (= var3026 null-Int)))
(declare-const var2607 String) ; Statement: r0 := @parameter2: java.lang.String 
(assert (not (= var2607 null-String)))
(declare-const var3594 String) ; Statement: r26 := @parameter3: java.lang.String 
(assert (not (= var3594 null-String)))
(declare-const var3842 String) ; Statement: r27 := @parameter4: java.lang.String 
(assert (not (= var3842 null-String)))
(declare-const var3550 (Array Int String)) ; Statement: r28 := @parameter5: java.lang.String[] 
(assert (not (= var3550 null-__Array__Int__String__)))
(assert true)
(define-const var2580 Int (lastIndexOf/-1292097097 var2607 47)) ; Statement: i0 = virtualinvoke r0.<java.lang.String: int lastIndexOf(int)>(47) 
(define-const var393 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i9 = (int) -1 
 ; Statement: if i0 != $i9 goto $r3 = r1.<jdk.internal.org.objectweb.asm.util.ASMifier: java.util.List text> 
(assert (not (not (= var2580 var393)))) ; Negate: Cond: i0 != $i9  
(define-const var3881 String var2607) ; Statement: r41 = r0 
 ; Statement: goto [?= $r10 = r1.<jdk.internal.org.objectweb.asm.util.ASMifier: java.util.List text>] 
(assert true) ; Non Conditional
(define-const var196 var62 (text/-10557480 (cast-from-var1351-to-var560 var1449))) ; Statement: $r10 = r1.<jdk.internal.org.objectweb.asm.util.ASMifier: java.util.List text> 
;(assert (var62_add/328494887 var196 (cast-from-String-to-var2364 "import java.util.*;\n"))) ; Statement: interfaceinvoke $r10.<java.util.List: boolean add(java.lang.Object)>("import java.util.*;\n") 

(declare-const var196!1 var62)
(declare-const var2981 String)
(define-const var2783 var62 (text/-10557480 (cast-from-var1351-to-var560 var1449))) ; Statement: $r11 = r1.<jdk.internal.org.objectweb.asm.util.ASMifier: java.util.List text> 
;(assert (var62_add/328494887 var2783 (cast-from-String-to-var2364 "import jdk.internal.org.objectweb.asm.*;\n"))) ; Statement: interfaceinvoke $r11.<java.util.List: boolean add(java.lang.Object)>("import jdk.internal.org.objectweb.asm.*;\n") 

(declare-const var2783!1 var62)
(declare-const var1008 String)
(define-const var3461 var62 (text/-10557480 (cast-from-var1351-to-var560 var1449))) ; Statement: $r13 = r1.<jdk.internal.org.objectweb.asm.util.ASMifier: java.util.List text> 
(define-const var250 String String-init) ; Statement: $r53 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var250)) ; Statement: specialinvoke $r53.<java.lang.StringBuilder: void <init>()>() 
(declare-const var250!1 String)
(assert (= var250!1 ""))
(assert true)
(define-const var2376 String (append/672562846 var250!1 "public class ")) ; Statement: $r14 = virtualinvoke $r53.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("public class ") 
(declare-const var250!2 String)
(assert (= var250!2 (str.++ var250!1 "public class ")))
(assert true)
(define-const var2065 String (append/672562846 var2376 var3881)) ; Statement: $r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r41) 
(declare-const var2376!1 String)
(assert (= var2376!1 (str.++ var2376 var3881)))
(assert true)
(define-const var2412 String (append/672562846 var2065 "Dump implements Opcodes {\n\n")) ; Statement: $r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Dump implements Opcodes {\n\n") 
(declare-const var2065!1 String)
(assert (= var2065!1 (str.++ var2065 "Dump implements Opcodes {\n\n")))
(assert true)
(define-const var1047 String (toString/-2075883882 var2412)) ; Statement: $r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.String toString()>() 
;(assert (var62_add/328494887 var3461 (cast-from-String-to-var2364 var1047))) ; Statement: interfaceinvoke $r13.<java.util.List: boolean add(java.lang.Object)>($r17) 

(declare-const var3461!1 var62)
(declare-const var1047!1 String)
(define-const var2845 var62 (text/-10557480 (cast-from-var1351-to-var560 var1449))) ; Statement: $r18 = r1.<jdk.internal.org.objectweb.asm.util.ASMifier: java.util.List text> 
;(assert (var62_add/328494887 var2845 (cast-from-String-to-var2364 "public static byte[] dump () throws Exception {\n\n"))) ; Statement: interfaceinvoke $r18.<java.util.List: boolean add(java.lang.Object)>("public static byte[] dump () throws Exception {\n\n") 

(declare-const var2845!1 var62)
(declare-const var900 String)
(define-const var1301 var62 (text/-10557480 (cast-from-var1351-to-var560 var1449))) ; Statement: $r19 = r1.<jdk.internal.org.objectweb.asm.util.ASMifier: java.util.List text> 
;(assert (var62_add/328494887 var1301 (cast-from-String-to-var2364 "ClassWriter cw = new ClassWriter(0);\n"))) ; Statement: interfaceinvoke $r19.<java.util.List: boolean add(java.lang.Object)>("ClassWriter cw = new ClassWriter(0);\n") 

(declare-const var1301!1 var62)
(declare-const var3045 String)
(define-const var3614 var62 (text/-10557480 (cast-from-var1351-to-var560 var1449))) ; Statement: $r20 = r1.<jdk.internal.org.objectweb.asm.util.ASMifier: java.util.List text> 
;(assert (var62_add/328494887 var3614 (cast-from-String-to-var2364 "FieldVisitor fv;\n"))) ; Statement: interfaceinvoke $r20.<java.util.List: boolean add(java.lang.Object)>("FieldVisitor fv;\n") 

(declare-const var3614!1 var62)
(declare-const var2931 String)
(define-const var1547 var62 (text/-10557480 (cast-from-var1351-to-var560 var1449))) ; Statement: $r21 = r1.<jdk.internal.org.objectweb.asm.util.ASMifier: java.util.List text> 
;(assert (var62_add/328494887 var1547 (cast-from-String-to-var2364 "MethodVisitor mv;\n"))) ; Statement: interfaceinvoke $r21.<java.util.List: boolean add(java.lang.Object)>("MethodVisitor mv;\n") 

(declare-const var1547!1 var62)
(declare-const var2663 String)
(define-const var1322 var62 (text/-10557480 (cast-from-var1351-to-var560 var1449))) ; Statement: $r22 = r1.<jdk.internal.org.objectweb.asm.util.ASMifier: java.util.List text> 
;(assert (var62_add/328494887 var1322 (cast-from-String-to-var2364 "AnnotationVisitor av0;\n\n"))) ; Statement: interfaceinvoke $r22.<java.util.List: boolean add(java.lang.Object)>("AnnotationVisitor av0;\n\n") 

(declare-const var1322!1 var62)
(declare-const var3421 String)
(define-const var1310 String (buf/-10557480 (cast-from-var1351-to-var560 var1449))) ; Statement: $r23 = r1.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf> 
(assert true)
;(assert (setLength/163251007 var1310 0)) ; Statement: virtualinvoke $r23.<java.lang.StringBuffer: void setLength(int)>(0) 

(declare-const var1310!1 String)
(declare-const var11 Int)
(define-const var2970 String (buf/-10557480 (cast-from-var1351-to-var560 var1449))) ; Statement: $r24 = r1.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf> 
(assert true)
;(assert (append/1560614132 var2970 "cw.visit(")) ; Statement: virtualinvoke $r24.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("cw.visit(") 
(declare-const var2970!1 String)
(assert (str.prefixof var2970 var2970!1))
 ; Statement: lookupswitch(i2) {     case 46: goto $r39 = r1.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf>;     case 47: goto $r38 = r1.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf>;     case 48: goto $r37 = r1.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf>;     case 49: goto $r36 = r1.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf>;     case 50: goto $r35 = r1.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf>;     case 51: goto $r34 = r1.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf>;     case 196653: goto $r25 = r1.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf>;     default: goto $r40 = r1.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf>; } 
(assert (and (= var1320 50) (and (not (= var1320 49)) (and (not (= var1320 48)) (and (not (= var1320 47)) (and (not (= var1320 46)) true)))))) ; Intersect: Cond: i2 == 50  and Intersect: Negate: Cond: i2 == 49   and Intersect: Negate: Cond: i2 == 48   and Intersect: Negate: Cond: i2 == 47   and Intersect: Negate: Cond: i2 == 46   and Non Conditional     
(define-const var1584 String (buf/-10557480 (cast-from-var1351-to-var560 var1449))) ; Statement: $r35 = r1.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf> 
(assert true)
;(assert (append/1560614132 var1584 "V1_6")) ; Statement: virtualinvoke $r35.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("V1_6") 
(declare-const var1584!1 String)
(assert (str.prefixof var1584 var1584!1))
 ; Statement: goto [?= $r42 = r1.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf>] 
(assert true) ; Non Conditional
(define-const var3324 String (buf/-10557480 (cast-from-var1351-to-var560 var1449))) ; Statement: $r42 = r1.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf> 
(assert true)
;(assert (append/1560614132 var3324 ", ")) ; Statement: virtualinvoke $r42.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(", ") 
(declare-const var3324!1 String)
(assert (str.prefixof var3324 var3324!1))
(define-const var3117 Int (bv2nat (bvor ((_ int2bv 64) var3026) ((_ int2bv 64) 262144)))) ; Statement: $i6 = i3 | 262144 
(assert true)
;(assert (appendAccess/732682052 var1449 var3117)) ; Statement: virtualinvoke r1.<jdk.internal.org.objectweb.asm.util.ASMifier: void appendAccess(int)>($i6) 

(declare-const var1449!1 var1351)
(declare-const var3117!1 Int)
(define-const var3847 String (buf/-10557480 (cast-from-var1351-to-var560 var1449!1))) ; Statement: $r43 = r1.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf> 
(assert true)
;(assert (append/1560614132 var3847 ", ")) ; Statement: virtualinvoke $r43.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(", ") 
(declare-const var3847!1 String)
(assert (str.prefixof var3847 var3847!1))
(assert true)
;(assert (appendConstant/2119113448 var1449!1 (cast-from-String-to-var2364 var2607))) ; Statement: virtualinvoke r1.<jdk.internal.org.objectweb.asm.util.ASMifier: void appendConstant(java.lang.Object)>(r0) 

(declare-const var1449!2 var1351)
(declare-const var2607!1 String)
(define-const var1603 String (buf/-10557480 (cast-from-var1351-to-var560 var1449!2))) ; Statement: $r44 = r1.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf> 
(assert true)
;(assert (append/1560614132 var1603 ", ")) ; Statement: virtualinvoke $r44.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(", ") 
(declare-const var1603!1 String)
(assert (str.prefixof var1603 var1603!1))
(assert true)
;(assert (appendConstant/2119113448 var1449!2 (cast-from-String-to-var2364 var3594))) ; Statement: virtualinvoke r1.<jdk.internal.org.objectweb.asm.util.ASMifier: void appendConstant(java.lang.Object)>(r26) 

(declare-const var1449!3 var1351)
(declare-const var3594!1 String)
(define-const var54 String (buf/-10557480 (cast-from-var1351-to-var560 var1449!3))) ; Statement: $r45 = r1.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf> 
(assert true)
;(assert (append/1560614132 var54 ", ")) ; Statement: virtualinvoke $r45.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(", ") 
(declare-const var54!1 String)
(assert (str.prefixof var54 var54!1))
(assert true)
;(assert (appendConstant/2119113448 var1449!3 (cast-from-String-to-var2364 var3842))) ; Statement: virtualinvoke r1.<jdk.internal.org.objectweb.asm.util.ASMifier: void appendConstant(java.lang.Object)>(r27) 

(declare-const var1449!4 var1351)
(declare-const var3842!1 String)
(define-const var2149 String (buf/-10557480 (cast-from-var1351-to-var560 var1449!4))) ; Statement: $r46 = r1.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf> 
(assert true)
;(assert (append/1560614132 var2149 ", ")) ; Statement: virtualinvoke $r46.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(", ") 
(declare-const var2149!1 String)
(assert (str.prefixof var2149 var2149!1))
 ; Statement: if r28 == null goto $r29 = r1.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf> 
(assert (= var3550 null-__Array__Int__String__)) ; Cond: r28 == null 
(define-const var2154 String (buf/-10557480 (cast-from-var1351-to-var560 var1449!4))) ; Statement: $r29 = r1.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf> 
(assert true)
;(assert (append/1560614132 var2154 "null")) ; Statement: virtualinvoke $r29.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("null") 
(declare-const var2154!1 String)
(assert (str.prefixof var2154 var2154!1))
(assert true) ; Non Conditional
(define-const var1440 String (buf/-10557480 (cast-from-var1351-to-var560 var1449!4))) ; Statement: $r48 = r1.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf> 
(assert true)
;(assert (append/1560614132 var1440 ");\n\n")) ; Statement: virtualinvoke $r48.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(");\n\n") 
(declare-const var1440!1 String)
(assert (str.prefixof var1440 var1440!1))
(define-const var628 var62 (text/-10557480 (cast-from-var1351-to-var560 var1449!4))) ; Statement: $r49 = r1.<jdk.internal.org.objectweb.asm.util.ASMifier: java.util.List text> 
(define-const var3496 String (buf/-10557480 (cast-from-var1351-to-var560 var1449!4))) ; Statement: $r50 = r1.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf> 
(assert true)
(define-const var3332 String (toString/-222306083 var3496)) ; Statement: $r51 = virtualinvoke $r50.<java.lang.StringBuffer: java.lang.String toString()>() 
;(assert (var62_add/328494887 var628 (cast-from-String-to-var2364 var3332))) ; Statement: interfaceinvoke $r49.<java.util.List: boolean add(java.lang.Object)>($r51) 

(declare-const var628!1 var62)
(declare-const var3332!1 String)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {lastIndexOf/-1292097097=([java.lang.String, int], int), cast-from-Int-to-Int=([int], int), text/-10557480=([jdk.internal.org.objectweb.asm.util.Printer], java.util.List), cast-from-var1351-to-var560=([jdk.internal.org.objectweb.asm.util.ASMifier], jdk.internal.org.objectweb.asm.util.Printer), var62_add/328494887=([java.util.List, java.lang.Object], boolean), cast-from-String-to-var2364=([java.lang.String], java.lang.Object), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), buf/-10557480=([jdk.internal.org.objectweb.asm.util.Printer], java.lang.StringBuffer), setLength/163251007=([java.lang.StringBuffer, int], void), append/1560614132=([java.lang.StringBuffer, java.lang.String], java.lang.StringBuffer), appendAccess/732682052=([jdk.internal.org.objectweb.asm.util.ASMifier, int], void), appendConstant/2119113448=([jdk.internal.org.objectweb.asm.util.ASMifier, java.lang.Object], void), toString/-222306083=([java.lang.StringBuffer], java.lang.String)}
; {var1351=jdk.internal.org.objectweb.asm.util.ASMifier, var1449=r1, var1320=i2, var3026=i3, var2607=r0, var2944=null_type, var3594=r26, var3842=r27, var3550=r28, var2580=i0, var393=$i9, var3881=r41, var62=java.util.List, var560=jdk.internal.org.objectweb.asm.util.Printer, var196=$r10, var2364=java.lang.Object, var2981="import java.util.*;\n", var2783=$r11, var1008="import jdk.internal.org.objectweb.asm.*;\n", var3461=$r13, var250=$r53, var2376=$r14, var2065=$r15, var2412=$r16, var1047=$r17, var2845=$r18, var900="public static byte[] dump () throws Exception {\n\n", var1301=$r19, var3045="ClassWriter cw = new ClassWriter(0);\n", var3614=$r20, var2931="FieldVisitor fv;\n", var1547=$r21, var2663="MethodVisitor mv;\n", var1322=$r22, var3421="AnnotationVisitor av0;\n\n", var1310=$r23, var11=0, var2970=$r24, var1584=$r35, var3324=$r42, var3117=$i6, var3847=$r43, var1603=$r44, var54=$r45, var2149=$r46, var2154=$r29, var1440=$r48, var628=$r49, var3496=$r50, var3332=$r51}
; {jdk.internal.org.objectweb.asm.util.ASMifier=var1351, r1=var1449, i2=var1320, i3=var3026, r0=var2607, null_type=var2944, r26=var3594, r27=var3842, r28=var3550, i0=var2580, $i9=var393, r41=var3881, java.util.List=var62, jdk.internal.org.objectweb.asm.util.Printer=var560, $r10=var196, java.lang.Object=var2364, "import java.util.*;\n"=var2981, $r11=var2783, "import jdk.internal.org.objectweb.asm.*;\n"=var1008, $r13=var3461, $r53=var250, $r14=var2376, $r15=var2065, $r16=var2412, $r17=var1047, $r18=var2845, "public static byte[] dump () throws Exception {\n\n"=var900, $r19=var1301, "ClassWriter cw = new ClassWriter(0);\n"=var3045, $r20=var3614, "FieldVisitor fv;\n"=var2931, $r21=var1547, "MethodVisitor mv;\n"=var2663, $r22=var1322, "AnnotationVisitor av0;\n\n"=var3421, $r23=var1310, 0=var11, $r24=var2970, $r35=var1584, $r42=var3324, $i6=var3117, $r43=var3847, $r44=var1603, $r45=var54, $r46=var2149, $r29=var2154, $r48=var1440, $r49=var628, $r50=var3496, $r51=var3332}
;seq <java.lang.String: int lastIndexOf(int)>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuffer: void setLength(int)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.String toString()>
;cnt {"<java.lang.String: int lastIndexOf(int)>": 1,"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1,"<java.lang.StringBuffer: void setLength(int)>": 1,"<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>": 9,"<java.lang.StringBuffer: java.lang.String toString()>": 1}
;stmts r1 := @this: jdk.internal.org.objectweb.asm.util.ASMifier;	i2 := @parameter0: int;	i3 := @parameter1: int;	r0 := @parameter2: java.lang.String;	r26 := @parameter3: java.lang.String;	r27 := @parameter4: java.lang.String;	r28 := @parameter5: java.lang.String[];	i0 = virtualinvoke r0.<java.lang.String: int lastIndexOf(int)>(47);	$i9 = (int) -1;	if i0 != $i9 goto $r3 = r1.<jdk.internal.org.objectweb.asm.util.ASMifier: java.util.List text>;	r41 = r0;	goto [?= $r10 = r1.<jdk.internal.org.objectweb.asm.util.ASMifier: java.util.List text>];	$r10 = r1.<jdk.internal.org.objectweb.asm.util.ASMifier: java.util.List text>;	interfaceinvoke $r10.<java.util.List: boolean add(java.lang.Object)>("import java.util.*;\n");	$r11 = r1.<jdk.internal.org.objectweb.asm.util.ASMifier: java.util.List text>;	interfaceinvoke $r11.<java.util.List: boolean add(java.lang.Object)>("import jdk.internal.org.objectweb.asm.*;\n");	$r13 = r1.<jdk.internal.org.objectweb.asm.util.ASMifier: java.util.List text>;	$r53 = new java.lang.StringBuilder;	specialinvoke $r53.<java.lang.StringBuilder: void <init>()>();	$r14 = virtualinvoke $r53.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("public class ");	$r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r41);	$r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Dump implements Opcodes {\n\n");	$r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.String toString()>();	interfaceinvoke $r13.<java.util.List: boolean add(java.lang.Object)>($r17);	$r18 = r1.<jdk.internal.org.objectweb.asm.util.ASMifier: java.util.List text>;	interfaceinvoke $r18.<java.util.List: boolean add(java.lang.Object)>("public static byte[] dump () throws Exception {\n\n");	$r19 = r1.<jdk.internal.org.objectweb.asm.util.ASMifier: java.util.List text>;	interfaceinvoke $r19.<java.util.List: boolean add(java.lang.Object)>("ClassWriter cw = new ClassWriter(0);\n");	$r20 = r1.<jdk.internal.org.objectweb.asm.util.ASMifier: java.util.List text>;	interfaceinvoke $r20.<java.util.List: boolean add(java.lang.Object)>("FieldVisitor fv;\n");	$r21 = r1.<jdk.internal.org.objectweb.asm.util.ASMifier: java.util.List text>;	interfaceinvoke $r21.<java.util.List: boolean add(java.lang.Object)>("MethodVisitor mv;\n");	$r22 = r1.<jdk.internal.org.objectweb.asm.util.ASMifier: java.util.List text>;	interfaceinvoke $r22.<java.util.List: boolean add(java.lang.Object)>("AnnotationVisitor av0;\n\n");	$r23 = r1.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf>;	virtualinvoke $r23.<java.lang.StringBuffer: void setLength(int)>(0);	$r24 = r1.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf>;	virtualinvoke $r24.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("cw.visit(");	lookupswitch(i2) {     case 46: goto $r39 = r1.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf>;     case 47: goto $r38 = r1.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf>;     case 48: goto $r37 = r1.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf>;     case 49: goto $r36 = r1.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf>;     case 50: goto $r35 = r1.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf>;     case 51: goto $r34 = r1.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf>;     case 196653: goto $r25 = r1.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf>;     default: goto $r40 = r1.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf>; };	$r35 = r1.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf>;	virtualinvoke $r35.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("V1_6");	goto [?= $r42 = r1.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf>];	$r42 = r1.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf>;	virtualinvoke $r42.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(", ");	$i6 = i3 | 262144;	virtualinvoke r1.<jdk.internal.org.objectweb.asm.util.ASMifier: void appendAccess(int)>($i6);	$r43 = r1.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf>;	virtualinvoke $r43.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(", ");	virtualinvoke r1.<jdk.internal.org.objectweb.asm.util.ASMifier: void appendConstant(java.lang.Object)>(r0);	$r44 = r1.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf>;	virtualinvoke $r44.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(", ");	virtualinvoke r1.<jdk.internal.org.objectweb.asm.util.ASMifier: void appendConstant(java.lang.Object)>(r26);	$r45 = r1.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf>;	virtualinvoke $r45.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(", ");	virtualinvoke r1.<jdk.internal.org.objectweb.asm.util.ASMifier: void appendConstant(java.lang.Object)>(r27);	$r46 = r1.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf>;	virtualinvoke $r46.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(", ");	if r28 == null goto $r29 = r1.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf>;	$r29 = r1.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf>;	virtualinvoke $r29.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("null");	$r48 = r1.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf>;	virtualinvoke $r48.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(");\n\n");	$r49 = r1.<jdk.internal.org.objectweb.asm.util.ASMifier: java.util.List text>;	$r50 = r1.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf>;	$r51 = virtualinvoke $r50.<java.lang.StringBuffer: java.lang.String toString()>();	interfaceinvoke $r49.<java.util.List: boolean add(java.lang.Object)>($r51);	return
;block_num 7