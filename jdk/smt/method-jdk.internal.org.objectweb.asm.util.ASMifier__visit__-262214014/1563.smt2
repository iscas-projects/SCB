(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var878 0)
(declare-sort var2058 0)
(declare-sort var3772 0)
(declare-sort var1744 0)
(declare-sort var1435 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun lastIndexOf/-1292097097 (String Int) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun text/-10557480 (var1744) var3772)
(declare-fun cast-from-var878-to-var1744 (var878) var1744)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun substring/-1240304868 ((s String) (begin Int) (end Int)) String (str.substr s begin (- end begin)))
(define-fun replace/1524665721 ((s String) (old_char Int) (new_char Int)) String (str.replace_all s (str.from_code old_char) (str.from_code new_char)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var3772_add/328494887 (var3772 var1435) Bool)
(declare-fun cast-from-String-to-var1435 (String) var1435)
(define-fun substring/850833817 ((s String) (begin Int)) String (str.substr s begin (- (str.len s) begin)))
(declare-fun buf/-10557480 (var1744) String)
(declare-fun setLength/163251007 (String Int) void)
(define-fun append/1560614132 ((s String) (tail String)) String (str.++ s tail))
(declare-fun appendAccess/732682052 (var878 Int) void)
(declare-fun appendConstant/2119113448 (var878 var1435) void)
(define-fun toString/-222306083 ((s String)) String s)
(declare-const null-var878 var878)
(declare-const null-Int Int)
(declare-const null-String String)
(declare-const null-__Array__Int__String__ (Array Int String))
(declare-const var2416 var878) ; Statement: r1 := @this: jdk.internal.org.objectweb.asm.util.ASMifier 
(assert (not (= var2416 null-var878)))
(declare-const var1714 Int) ; Statement: i2 := @parameter0: int 
(assert (not (= var1714 null-Int)))
(declare-const var495 Int) ; Statement: i3 := @parameter1: int 
(assert (not (= var495 null-Int)))
(declare-const var688 String) ; Statement: r0 := @parameter2: java.lang.String 
(assert (not (= var688 null-String)))
(declare-const var3888 String) ; Statement: r26 := @parameter3: java.lang.String 
(assert (not (= var3888 null-String)))
(declare-const var224 String) ; Statement: r27 := @parameter4: java.lang.String 
(assert (not (= var224 null-String)))
(declare-const var1537 (Array Int String)) ; Statement: r28 := @parameter5: java.lang.String[] 
(assert (not (= var1537 null-__Array__Int__String__)))
(assert true)
(define-const var2429 Int (lastIndexOf/-1292097097 var688 47)) ; Statement: i0 = virtualinvoke r0.<java.lang.String: int lastIndexOf(int)>(47) 
(define-const var784 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i9 = (int) -1 
 ; Statement: if i0 != $i9 goto $r3 = r1.<jdk.internal.org.objectweb.asm.util.ASMifier: java.util.List text> 
(assert (not (= var2429 var784))) ; Cond: i0 != $i9 
(define-const var795 var3772 (text/-10557480 (cast-from-var878-to-var1744 var2416))) ; Statement: $r3 = r1.<jdk.internal.org.objectweb.asm.util.ASMifier: java.util.List text> 
(define-const var2188 String String-init) ; Statement: $r52 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2188)) ; Statement: specialinvoke $r52.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2188!1 String)
(assert (= var2188!1 ""))
(assert true)
(define-const var3293 String (append/672562846 var2188!1 "package asm.")) ; Statement: $r6 = virtualinvoke $r52.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("package asm.") 
(declare-const var2188!2 String)
(assert (= var2188!2 (str.++ var2188!1 "package asm.")))
(assert (and true (and (>= 0 0) (>= (str.len var688) var2429) (>= var2429 0))))
(define-const var1863 String (substring/-1240304868 var688 0 var2429)) ; Statement: $r4 = virtualinvoke r0.<java.lang.String: java.lang.String substring(int,int)>(0, i0) 
(assert true)
(define-const var2162 String (replace/1524665721 var1863 47 46)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.String: java.lang.String replace(char,char)>(47, 46) 
(assert true)
(define-const var3300 String (append/672562846 var3293 var2162)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5) 
(declare-const var3293!1 String)
(assert (= var3293!1 (str.++ var3293 var2162)))
(assert true)
(define-const var3275 String (append/672562846 var3300 ";\n")) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(";\n") 
(declare-const var3300!1 String)
(assert (= var3300!1 (str.++ var3300 ";\n")))
(assert true)
(define-const var142 String (toString/-2075883882 var3275)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
;(assert (var3772_add/328494887 var795 (cast-from-String-to-var1435 var142))) ; Statement: interfaceinvoke $r3.<java.util.List: boolean add(java.lang.Object)>($r9) 

(declare-const var795!1 var3772)
(declare-const var142!1 String)
(define-const var3908 Int (+ var2429 1)) ; Statement: $i1 = i0 + 1 
(assert (and true (and (>= var3908 0) (>= (str.len var688) var3908))))
(define-const var1278 String (substring/850833817 var688 var3908)) ; Statement: r41 = virtualinvoke r0.<java.lang.String: java.lang.String substring(int)>($i1) 
(assert true) ; Non Conditional
(define-const var1724 var3772 (text/-10557480 (cast-from-var878-to-var1744 var2416))) ; Statement: $r10 = r1.<jdk.internal.org.objectweb.asm.util.ASMifier: java.util.List text> 
;(assert (var3772_add/328494887 var1724 (cast-from-String-to-var1435 "import java.util.*;\n"))) ; Statement: interfaceinvoke $r10.<java.util.List: boolean add(java.lang.Object)>("import java.util.*;\n") 

(declare-const var1724!1 var3772)
(declare-const var3216 String)
(define-const var597 var3772 (text/-10557480 (cast-from-var878-to-var1744 var2416))) ; Statement: $r11 = r1.<jdk.internal.org.objectweb.asm.util.ASMifier: java.util.List text> 
;(assert (var3772_add/328494887 var597 (cast-from-String-to-var1435 "import jdk.internal.org.objectweb.asm.*;\n"))) ; Statement: interfaceinvoke $r11.<java.util.List: boolean add(java.lang.Object)>("import jdk.internal.org.objectweb.asm.*;\n") 

(declare-const var597!1 var3772)
(declare-const var1944 String)
(define-const var2277 var3772 (text/-10557480 (cast-from-var878-to-var1744 var2416))) ; Statement: $r13 = r1.<jdk.internal.org.objectweb.asm.util.ASMifier: java.util.List text> 
(define-const var3420 String String-init) ; Statement: $r53 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3420)) ; Statement: specialinvoke $r53.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3420!1 String)
(assert (= var3420!1 ""))
(assert true)
(define-const var552 String (append/672562846 var3420!1 "public class ")) ; Statement: $r14 = virtualinvoke $r53.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("public class ") 
(declare-const var3420!2 String)
(assert (= var3420!2 (str.++ var3420!1 "public class ")))
(assert true)
(define-const var544 String (append/672562846 var552 var1278)) ; Statement: $r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r41) 
(declare-const var552!1 String)
(assert (= var552!1 (str.++ var552 var1278)))
(assert true)
(define-const var63 String (append/672562846 var544 "Dump implements Opcodes {\n\n")) ; Statement: $r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Dump implements Opcodes {\n\n") 
(declare-const var544!1 String)
(assert (= var544!1 (str.++ var544 "Dump implements Opcodes {\n\n")))
(assert true)
(define-const var1830 String (toString/-2075883882 var63)) ; Statement: $r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.String toString()>() 
;(assert (var3772_add/328494887 var2277 (cast-from-String-to-var1435 var1830))) ; Statement: interfaceinvoke $r13.<java.util.List: boolean add(java.lang.Object)>($r17) 

(declare-const var2277!1 var3772)
(declare-const var1830!1 String)
(define-const var2427 var3772 (text/-10557480 (cast-from-var878-to-var1744 var2416))) ; Statement: $r18 = r1.<jdk.internal.org.objectweb.asm.util.ASMifier: java.util.List text> 
;(assert (var3772_add/328494887 var2427 (cast-from-String-to-var1435 "public static byte[] dump () throws Exception {\n\n"))) ; Statement: interfaceinvoke $r18.<java.util.List: boolean add(java.lang.Object)>("public static byte[] dump () throws Exception {\n\n") 

(declare-const var2427!1 var3772)
(declare-const var3320 String)
(define-const var3853 var3772 (text/-10557480 (cast-from-var878-to-var1744 var2416))) ; Statement: $r19 = r1.<jdk.internal.org.objectweb.asm.util.ASMifier: java.util.List text> 
;(assert (var3772_add/328494887 var3853 (cast-from-String-to-var1435 "ClassWriter cw = new ClassWriter(0);\n"))) ; Statement: interfaceinvoke $r19.<java.util.List: boolean add(java.lang.Object)>("ClassWriter cw = new ClassWriter(0);\n") 

(declare-const var3853!1 var3772)
(declare-const var776 String)
(define-const var666 var3772 (text/-10557480 (cast-from-var878-to-var1744 var2416))) ; Statement: $r20 = r1.<jdk.internal.org.objectweb.asm.util.ASMifier: java.util.List text> 
;(assert (var3772_add/328494887 var666 (cast-from-String-to-var1435 "FieldVisitor fv;\n"))) ; Statement: interfaceinvoke $r20.<java.util.List: boolean add(java.lang.Object)>("FieldVisitor fv;\n") 

(declare-const var666!1 var3772)
(declare-const var2018 String)
(define-const var1626 var3772 (text/-10557480 (cast-from-var878-to-var1744 var2416))) ; Statement: $r21 = r1.<jdk.internal.org.objectweb.asm.util.ASMifier: java.util.List text> 
;(assert (var3772_add/328494887 var1626 (cast-from-String-to-var1435 "MethodVisitor mv;\n"))) ; Statement: interfaceinvoke $r21.<java.util.List: boolean add(java.lang.Object)>("MethodVisitor mv;\n") 

(declare-const var1626!1 var3772)
(declare-const var1250 String)
(define-const var3439 var3772 (text/-10557480 (cast-from-var878-to-var1744 var2416))) ; Statement: $r22 = r1.<jdk.internal.org.objectweb.asm.util.ASMifier: java.util.List text> 
;(assert (var3772_add/328494887 var3439 (cast-from-String-to-var1435 "AnnotationVisitor av0;\n\n"))) ; Statement: interfaceinvoke $r22.<java.util.List: boolean add(java.lang.Object)>("AnnotationVisitor av0;\n\n") 

(declare-const var3439!1 var3772)
(declare-const var3716 String)
(define-const var3967 String (buf/-10557480 (cast-from-var878-to-var1744 var2416))) ; Statement: $r23 = r1.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf> 
(assert true)
;(assert (setLength/163251007 var3967 0)) ; Statement: virtualinvoke $r23.<java.lang.StringBuffer: void setLength(int)>(0) 

(declare-const var3967!1 String)
(declare-const var1534 Int)
(define-const var1138 String (buf/-10557480 (cast-from-var878-to-var1744 var2416))) ; Statement: $r24 = r1.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf> 
(assert true)
;(assert (append/1560614132 var1138 "cw.visit(")) ; Statement: virtualinvoke $r24.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("cw.visit(") 
(declare-const var1138!1 String)
(assert (str.prefixof var1138 var1138!1))
 ; Statement: lookupswitch(i2) {     case 46: goto $r39 = r1.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf>;     case 47: goto $r38 = r1.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf>;     case 48: goto $r37 = r1.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf>;     case 49: goto $r36 = r1.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf>;     case 50: goto $r35 = r1.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf>;     case 51: goto $r34 = r1.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf>;     case 196653: goto $r25 = r1.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf>;     default: goto $r40 = r1.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf>; } 
(assert (and (= var1714 49) (and (not (= var1714 48)) (and (not (= var1714 47)) (and (not (= var1714 46)) true))))) ; Intersect: Cond: i2 == 49  and Intersect: Negate: Cond: i2 == 48   and Intersect: Negate: Cond: i2 == 47   and Intersect: Negate: Cond: i2 == 46   and Non Conditional    
(define-const var2826 String (buf/-10557480 (cast-from-var878-to-var1744 var2416))) ; Statement: $r36 = r1.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf> 
(assert true)
;(assert (append/1560614132 var2826 "V1_5")) ; Statement: virtualinvoke $r36.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("V1_5") 
(declare-const var2826!1 String)
(assert (str.prefixof var2826 var2826!1))
 ; Statement: goto [?= $r42 = r1.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf>] 
(assert true) ; Non Conditional
(define-const var2894 String (buf/-10557480 (cast-from-var878-to-var1744 var2416))) ; Statement: $r42 = r1.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf> 
(assert true)
;(assert (append/1560614132 var2894 ", ")) ; Statement: virtualinvoke $r42.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(", ") 
(declare-const var2894!1 String)
(assert (str.prefixof var2894 var2894!1))
(define-const var45 Int (bv2nat (bvor ((_ int2bv 64) var495) ((_ int2bv 64) 262144)))) ; Statement: $i6 = i3 | 262144 
(assert true)
;(assert (appendAccess/732682052 var2416 var45)) ; Statement: virtualinvoke r1.<jdk.internal.org.objectweb.asm.util.ASMifier: void appendAccess(int)>($i6) 

(declare-const var2416!1 var878)
(declare-const var45!1 Int)
(define-const var2227 String (buf/-10557480 (cast-from-var878-to-var1744 var2416!1))) ; Statement: $r43 = r1.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf> 
(assert true)
;(assert (append/1560614132 var2227 ", ")) ; Statement: virtualinvoke $r43.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(", ") 
(declare-const var2227!1 String)
(assert (str.prefixof var2227 var2227!1))
(assert true)
;(assert (appendConstant/2119113448 var2416!1 (cast-from-String-to-var1435 var688))) ; Statement: virtualinvoke r1.<jdk.internal.org.objectweb.asm.util.ASMifier: void appendConstant(java.lang.Object)>(r0) 

(declare-const var2416!2 var878)
(declare-const var688!1 String)
(define-const var1883 String (buf/-10557480 (cast-from-var878-to-var1744 var2416!2))) ; Statement: $r44 = r1.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf> 
(assert true)
;(assert (append/1560614132 var1883 ", ")) ; Statement: virtualinvoke $r44.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(", ") 
(declare-const var1883!1 String)
(assert (str.prefixof var1883 var1883!1))
(assert true)
;(assert (appendConstant/2119113448 var2416!2 (cast-from-String-to-var1435 var3888))) ; Statement: virtualinvoke r1.<jdk.internal.org.objectweb.asm.util.ASMifier: void appendConstant(java.lang.Object)>(r26) 

(declare-const var2416!3 var878)
(declare-const var3888!1 String)
(define-const var605 String (buf/-10557480 (cast-from-var878-to-var1744 var2416!3))) ; Statement: $r45 = r1.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf> 
(assert true)
;(assert (append/1560614132 var605 ", ")) ; Statement: virtualinvoke $r45.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(", ") 
(declare-const var605!1 String)
(assert (str.prefixof var605 var605!1))
(assert true)
;(assert (appendConstant/2119113448 var2416!3 (cast-from-String-to-var1435 var224))) ; Statement: virtualinvoke r1.<jdk.internal.org.objectweb.asm.util.ASMifier: void appendConstant(java.lang.Object)>(r27) 

(declare-const var2416!4 var878)
(declare-const var224!1 String)
(define-const var2840 String (buf/-10557480 (cast-from-var878-to-var1744 var2416!4))) ; Statement: $r46 = r1.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf> 
(assert true)
;(assert (append/1560614132 var2840 ", ")) ; Statement: virtualinvoke $r46.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(", ") 
(declare-const var2840!1 String)
(assert (str.prefixof var2840 var2840!1))
 ; Statement: if r28 == null goto $r29 = r1.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf> 
(assert (= var1537 null-__Array__Int__String__)) ; Cond: r28 == null 
(define-const var1455 String (buf/-10557480 (cast-from-var878-to-var1744 var2416!4))) ; Statement: $r29 = r1.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf> 
(assert true)
;(assert (append/1560614132 var1455 "null")) ; Statement: virtualinvoke $r29.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("null") 
(declare-const var1455!1 String)
(assert (str.prefixof var1455 var1455!1))
(assert true) ; Non Conditional
(define-const var3057 String (buf/-10557480 (cast-from-var878-to-var1744 var2416!4))) ; Statement: $r48 = r1.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf> 
(assert true)
;(assert (append/1560614132 var3057 ");\n\n")) ; Statement: virtualinvoke $r48.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(");\n\n") 
(declare-const var3057!1 String)
(assert (str.prefixof var3057 var3057!1))
(define-const var3524 var3772 (text/-10557480 (cast-from-var878-to-var1744 var2416!4))) ; Statement: $r49 = r1.<jdk.internal.org.objectweb.asm.util.ASMifier: java.util.List text> 
(define-const var1190 String (buf/-10557480 (cast-from-var878-to-var1744 var2416!4))) ; Statement: $r50 = r1.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf> 
(assert true)
(define-const var1282 String (toString/-222306083 var1190)) ; Statement: $r51 = virtualinvoke $r50.<java.lang.StringBuffer: java.lang.String toString()>() 
;(assert (var3772_add/328494887 var3524 (cast-from-String-to-var1435 var1282))) ; Statement: interfaceinvoke $r49.<java.util.List: boolean add(java.lang.Object)>($r51) 

(declare-const var3524!1 var3772)
(declare-const var1282!1 String)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {lastIndexOf/-1292097097=([java.lang.String, int], int), cast-from-Int-to-Int=([int], int), text/-10557480=([jdk.internal.org.objectweb.asm.util.Printer], java.util.List), cast-from-var878-to-var1744=([jdk.internal.org.objectweb.asm.util.ASMifier], jdk.internal.org.objectweb.asm.util.Printer), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), substring/-1240304868=([java.lang.String, int, int], java.lang.String), replace/1524665721=([java.lang.String, char, char], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var3772_add/328494887=([java.util.List, java.lang.Object], boolean), cast-from-String-to-var1435=([java.lang.String], java.lang.Object), substring/850833817=([java.lang.String, int], java.lang.String), buf/-10557480=([jdk.internal.org.objectweb.asm.util.Printer], java.lang.StringBuffer), setLength/163251007=([java.lang.StringBuffer, int], void), append/1560614132=([java.lang.StringBuffer, java.lang.String], java.lang.StringBuffer), appendAccess/732682052=([jdk.internal.org.objectweb.asm.util.ASMifier, int], void), appendConstant/2119113448=([jdk.internal.org.objectweb.asm.util.ASMifier, java.lang.Object], void), toString/-222306083=([java.lang.StringBuffer], java.lang.String)}
; {var878=jdk.internal.org.objectweb.asm.util.ASMifier, var2416=r1, var1714=i2, var495=i3, var688=r0, var2058=null_type, var3888=r26, var224=r27, var1537=r28, var2429=i0, var784=$i9, var3772=java.util.List, var1744=jdk.internal.org.objectweb.asm.util.Printer, var795=$r3, var2188=$r52, var3293=$r6, var1863=$r4, var2162=$r5, var3300=$r7, var3275=$r8, var142=$r9, var1435=java.lang.Object, var3908=$i1, var1278=r41, var1724=$r10, var3216="import java.util.*;\n", var597=$r11, var1944="import jdk.internal.org.objectweb.asm.*;\n", var2277=$r13, var3420=$r53, var552=$r14, var544=$r15, var63=$r16, var1830=$r17, var2427=$r18, var3320="public static byte[] dump () throws Exception {\n\n", var3853=$r19, var776="ClassWriter cw = new ClassWriter(0);\n", var666=$r20, var2018="FieldVisitor fv;\n", var1626=$r21, var1250="MethodVisitor mv;\n", var3439=$r22, var3716="AnnotationVisitor av0;\n\n", var3967=$r23, var1534=0, var1138=$r24, var2826=$r36, var2894=$r42, var45=$i6, var2227=$r43, var1883=$r44, var605=$r45, var2840=$r46, var1455=$r29, var3057=$r48, var3524=$r49, var1190=$r50, var1282=$r51}
; {jdk.internal.org.objectweb.asm.util.ASMifier=var878, r1=var2416, i2=var1714, i3=var495, r0=var688, null_type=var2058, r26=var3888, r27=var224, r28=var1537, i0=var2429, $i9=var784, java.util.List=var3772, jdk.internal.org.objectweb.asm.util.Printer=var1744, $r3=var795, $r52=var2188, $r6=var3293, $r4=var1863, $r5=var2162, $r7=var3300, $r8=var3275, $r9=var142, java.lang.Object=var1435, $i1=var3908, r41=var1278, $r10=var1724, "import java.util.*;\n"=var3216, $r11=var597, "import jdk.internal.org.objectweb.asm.*;\n"=var1944, $r13=var2277, $r53=var3420, $r14=var552, $r15=var544, $r16=var63, $r17=var1830, $r18=var2427, "public static byte[] dump () throws Exception {\n\n"=var3320, $r19=var3853, "ClassWriter cw = new ClassWriter(0);\n"=var776, $r20=var666, "FieldVisitor fv;\n"=var2018, $r21=var1626, "MethodVisitor mv;\n"=var1250, $r22=var3439, "AnnotationVisitor av0;\n\n"=var3716, $r23=var3967, 0=var1534, $r24=var1138, $r36=var2826, $r42=var2894, $i6=var45, $r43=var2227, $r44=var1883, $r45=var605, $r46=var2840, $r29=var1455, $r48=var3057, $r49=var3524, $r50=var1190, $r51=var1282}
;seq <java.lang.String: int lastIndexOf(int)>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.String: java.lang.String substring(int,int)>;	<java.lang.String: java.lang.String replace(char,char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.String: java.lang.String substring(int)>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuffer: void setLength(int)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.String toString()>
;cnt {"<java.lang.String: int lastIndexOf(int)>": 1,"<java.lang.StringBuilder: void <init>()>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 6,"<java.lang.String: java.lang.String substring(int,int)>": 1,"<java.lang.String: java.lang.String replace(char,char)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 2,"<java.lang.String: java.lang.String substring(int)>": 1,"<java.lang.StringBuffer: void setLength(int)>": 1,"<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>": 9,"<java.lang.StringBuffer: java.lang.String toString()>": 1}
;stmts r1 := @this: jdk.internal.org.objectweb.asm.util.ASMifier;	i2 := @parameter0: int;	i3 := @parameter1: int;	r0 := @parameter2: java.lang.String;	r26 := @parameter3: java.lang.String;	r27 := @parameter4: java.lang.String;	r28 := @parameter5: java.lang.String[];	i0 = virtualinvoke r0.<java.lang.String: int lastIndexOf(int)>(47);	$i9 = (int) -1;	if i0 != $i9 goto $r3 = r1.<jdk.internal.org.objectweb.asm.util.ASMifier: java.util.List text>;	$r3 = r1.<jdk.internal.org.objectweb.asm.util.ASMifier: java.util.List text>;	$r52 = new java.lang.StringBuilder;	specialinvoke $r52.<java.lang.StringBuilder: void <init>()>();	$r6 = virtualinvoke $r52.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("package asm.");	$r4 = virtualinvoke r0.<java.lang.String: java.lang.String substring(int,int)>(0, i0);	$r5 = virtualinvoke $r4.<java.lang.String: java.lang.String replace(char,char)>(47, 46);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(";\n");	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	interfaceinvoke $r3.<java.util.List: boolean add(java.lang.Object)>($r9);	$i1 = i0 + 1;	r41 = virtualinvoke r0.<java.lang.String: java.lang.String substring(int)>($i1);	$r10 = r1.<jdk.internal.org.objectweb.asm.util.ASMifier: java.util.List text>;	interfaceinvoke $r10.<java.util.List: boolean add(java.lang.Object)>("import java.util.*;\n");	$r11 = r1.<jdk.internal.org.objectweb.asm.util.ASMifier: java.util.List text>;	interfaceinvoke $r11.<java.util.List: boolean add(java.lang.Object)>("import jdk.internal.org.objectweb.asm.*;\n");	$r13 = r1.<jdk.internal.org.objectweb.asm.util.ASMifier: java.util.List text>;	$r53 = new java.lang.StringBuilder;	specialinvoke $r53.<java.lang.StringBuilder: void <init>()>();	$r14 = virtualinvoke $r53.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("public class ");	$r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r41);	$r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Dump implements Opcodes {\n\n");	$r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.String toString()>();	interfaceinvoke $r13.<java.util.List: boolean add(java.lang.Object)>($r17);	$r18 = r1.<jdk.internal.org.objectweb.asm.util.ASMifier: java.util.List text>;	interfaceinvoke $r18.<java.util.List: boolean add(java.lang.Object)>("public static byte[] dump () throws Exception {\n\n");	$r19 = r1.<jdk.internal.org.objectweb.asm.util.ASMifier: java.util.List text>;	interfaceinvoke $r19.<java.util.List: boolean add(java.lang.Object)>("ClassWriter cw = new ClassWriter(0);\n");	$r20 = r1.<jdk.internal.org.objectweb.asm.util.ASMifier: java.util.List text>;	interfaceinvoke $r20.<java.util.List: boolean add(java.lang.Object)>("FieldVisitor fv;\n");	$r21 = r1.<jdk.internal.org.objectweb.asm.util.ASMifier: java.util.List text>;	interfaceinvoke $r21.<java.util.List: boolean add(java.lang.Object)>("MethodVisitor mv;\n");	$r22 = r1.<jdk.internal.org.objectweb.asm.util.ASMifier: java.util.List text>;	interfaceinvoke $r22.<java.util.List: boolean add(java.lang.Object)>("AnnotationVisitor av0;\n\n");	$r23 = r1.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf>;	virtualinvoke $r23.<java.lang.StringBuffer: void setLength(int)>(0);	$r24 = r1.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf>;	virtualinvoke $r24.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("cw.visit(");	lookupswitch(i2) {     case 46: goto $r39 = r1.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf>;     case 47: goto $r38 = r1.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf>;     case 48: goto $r37 = r1.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf>;     case 49: goto $r36 = r1.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf>;     case 50: goto $r35 = r1.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf>;     case 51: goto $r34 = r1.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf>;     case 196653: goto $r25 = r1.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf>;     default: goto $r40 = r1.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf>; };	$r36 = r1.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf>;	virtualinvoke $r36.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("V1_5");	goto [?= $r42 = r1.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf>];	$r42 = r1.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf>;	virtualinvoke $r42.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(", ");	$i6 = i3 | 262144;	virtualinvoke r1.<jdk.internal.org.objectweb.asm.util.ASMifier: void appendAccess(int)>($i6);	$r43 = r1.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf>;	virtualinvoke $r43.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(", ");	virtualinvoke r1.<jdk.internal.org.objectweb.asm.util.ASMifier: void appendConstant(java.lang.Object)>(r0);	$r44 = r1.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf>;	virtualinvoke $r44.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(", ");	virtualinvoke r1.<jdk.internal.org.objectweb.asm.util.ASMifier: void appendConstant(java.lang.Object)>(r26);	$r45 = r1.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf>;	virtualinvoke $r45.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(", ");	virtualinvoke r1.<jdk.internal.org.objectweb.asm.util.ASMifier: void appendConstant(java.lang.Object)>(r27);	$r46 = r1.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf>;	virtualinvoke $r46.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(", ");	if r28 == null goto $r29 = r1.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf>;	$r29 = r1.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf>;	virtualinvoke $r29.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("null");	$r48 = r1.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf>;	virtualinvoke $r48.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(");\n\n");	$r49 = r1.<jdk.internal.org.objectweb.asm.util.ASMifier: java.util.List text>;	$r50 = r1.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf>;	$r51 = virtualinvoke $r50.<java.lang.StringBuffer: java.lang.String toString()>();	interfaceinvoke $r49.<java.util.List: boolean add(java.lang.Object)>($r51);	return
;block_num 7