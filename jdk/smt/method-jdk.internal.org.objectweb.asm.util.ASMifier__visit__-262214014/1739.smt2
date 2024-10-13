(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1126 0)
(declare-sort var2282 0)
(declare-sort var1062 0)
(declare-sort var115 0)
(declare-sort var3418 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun lastIndexOf/-1292097097 (String Int) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun text/-10557480 (var115) var1062)
(declare-fun cast-from-var1126-to-var115 (var1126) var115)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun substring/-1240304868 ((s String) (begin Int) (end Int)) String (str.substr s begin (- end begin)))
(define-fun replace/1524665721 ((s String) (old_char Int) (new_char Int)) String (str.replace_all s (str.from_code old_char) (str.from_code new_char)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var1062_add/328494887 (var1062 var3418) Bool)
(declare-fun cast-from-String-to-var3418 (String) var3418)
(define-fun substring/850833817 ((s String) (begin Int)) String (str.substr s begin (- (str.len s) begin)))
(declare-fun buf/-10557480 (var115) String)
(declare-fun setLength/163251007 (String Int) void)
(define-fun append/1560614132 ((s String) (tail String)) String (str.++ s tail))
(declare-fun appendAccess/732682052 (var1126 Int) void)
(declare-fun appendConstant/2119113448 (var1126 var3418) void)
(define-fun toString/-222306083 ((s String)) String s)
(declare-const null-var1126 var1126)
(declare-const null-Int Int)
(declare-const null-String String)
(declare-const null-__Array__Int__String__ (Array Int String))
(declare-const var1687 var1126) ; Statement: r1 := @this: jdk.internal.org.objectweb.asm.util.ASMifier 
(assert (not (= var1687 null-var1126)))
(declare-const var1386 Int) ; Statement: i2 := @parameter0: int 
(assert (not (= var1386 null-Int)))
(declare-const var2009 Int) ; Statement: i3 := @parameter1: int 
(assert (not (= var2009 null-Int)))
(declare-const var993 String) ; Statement: r0 := @parameter2: java.lang.String 
(assert (not (= var993 null-String)))
(declare-const var2660 String) ; Statement: r26 := @parameter3: java.lang.String 
(assert (not (= var2660 null-String)))
(declare-const var2487 String) ; Statement: r27 := @parameter4: java.lang.String 
(assert (not (= var2487 null-String)))
(declare-const var1811 (Array Int String)) ; Statement: r28 := @parameter5: java.lang.String[] 
(assert (not (= var1811 null-__Array__Int__String__)))
(assert true)
(define-const var961 Int (lastIndexOf/-1292097097 var993 47)) ; Statement: i0 = virtualinvoke r0.<java.lang.String: int lastIndexOf(int)>(47) 
(define-const var740 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i9 = (int) -1 
 ; Statement: if i0 != $i9 goto $r3 = r1.<jdk.internal.org.objectweb.asm.util.ASMifier: java.util.List text> 
(assert (not (= var961 var740))) ; Cond: i0 != $i9 
(define-const var2764 var1062 (text/-10557480 (cast-from-var1126-to-var115 var1687))) ; Statement: $r3 = r1.<jdk.internal.org.objectweb.asm.util.ASMifier: java.util.List text> 
(define-const var3029 String String-init) ; Statement: $r52 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3029)) ; Statement: specialinvoke $r52.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3029!1 String)
(assert (= var3029!1 ""))
(assert true)
(define-const var286 String (append/672562846 var3029!1 "package asm.")) ; Statement: $r6 = virtualinvoke $r52.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("package asm.") 
(declare-const var3029!2 String)
(assert (= var3029!2 (str.++ var3029!1 "package asm.")))
(assert (and true (and (>= 0 0) (>= (str.len var993) var961) (>= var961 0))))
(define-const var4 String (substring/-1240304868 var993 0 var961)) ; Statement: $r4 = virtualinvoke r0.<java.lang.String: java.lang.String substring(int,int)>(0, i0) 
(assert true)
(define-const var3393 String (replace/1524665721 var4 47 46)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.String: java.lang.String replace(char,char)>(47, 46) 
(assert true)
(define-const var2583 String (append/672562846 var286 var3393)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5) 
(declare-const var286!1 String)
(assert (= var286!1 (str.++ var286 var3393)))
(assert true)
(define-const var3241 String (append/672562846 var2583 ";\n")) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(";\n") 
(declare-const var2583!1 String)
(assert (= var2583!1 (str.++ var2583 ";\n")))
(assert true)
(define-const var903 String (toString/-2075883882 var3241)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
;(assert (var1062_add/328494887 var2764 (cast-from-String-to-var3418 var903))) ; Statement: interfaceinvoke $r3.<java.util.List: boolean add(java.lang.Object)>($r9) 

(declare-const var2764!1 var1062)
(declare-const var903!1 String)
(define-const var767 Int (+ var961 1)) ; Statement: $i1 = i0 + 1 
(assert (and true (and (>= var767 0) (>= (str.len var993) var767))))
(define-const var2923 String (substring/850833817 var993 var767)) ; Statement: r41 = virtualinvoke r0.<java.lang.String: java.lang.String substring(int)>($i1) 
(assert true) ; Non Conditional
(define-const var1885 var1062 (text/-10557480 (cast-from-var1126-to-var115 var1687))) ; Statement: $r10 = r1.<jdk.internal.org.objectweb.asm.util.ASMifier: java.util.List text> 
;(assert (var1062_add/328494887 var1885 (cast-from-String-to-var3418 "import java.util.*;\n"))) ; Statement: interfaceinvoke $r10.<java.util.List: boolean add(java.lang.Object)>("import java.util.*;\n") 

(declare-const var1885!1 var1062)
(declare-const var245 String)
(define-const var3982 var1062 (text/-10557480 (cast-from-var1126-to-var115 var1687))) ; Statement: $r11 = r1.<jdk.internal.org.objectweb.asm.util.ASMifier: java.util.List text> 
;(assert (var1062_add/328494887 var3982 (cast-from-String-to-var3418 "import jdk.internal.org.objectweb.asm.*;\n"))) ; Statement: interfaceinvoke $r11.<java.util.List: boolean add(java.lang.Object)>("import jdk.internal.org.objectweb.asm.*;\n") 

(declare-const var3982!1 var1062)
(declare-const var2280 String)
(define-const var240 var1062 (text/-10557480 (cast-from-var1126-to-var115 var1687))) ; Statement: $r13 = r1.<jdk.internal.org.objectweb.asm.util.ASMifier: java.util.List text> 
(define-const var2786 String String-init) ; Statement: $r53 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2786)) ; Statement: specialinvoke $r53.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2786!1 String)
(assert (= var2786!1 ""))
(assert true)
(define-const var22 String (append/672562846 var2786!1 "public class ")) ; Statement: $r14 = virtualinvoke $r53.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("public class ") 
(declare-const var2786!2 String)
(assert (= var2786!2 (str.++ var2786!1 "public class ")))
(assert true)
(define-const var282 String (append/672562846 var22 var2923)) ; Statement: $r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r41) 
(declare-const var22!1 String)
(assert (= var22!1 (str.++ var22 var2923)))
(assert true)
(define-const var2993 String (append/672562846 var282 "Dump implements Opcodes {\n\n")) ; Statement: $r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Dump implements Opcodes {\n\n") 
(declare-const var282!1 String)
(assert (= var282!1 (str.++ var282 "Dump implements Opcodes {\n\n")))
(assert true)
(define-const var1170 String (toString/-2075883882 var2993)) ; Statement: $r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.String toString()>() 
;(assert (var1062_add/328494887 var240 (cast-from-String-to-var3418 var1170))) ; Statement: interfaceinvoke $r13.<java.util.List: boolean add(java.lang.Object)>($r17) 

(declare-const var240!1 var1062)
(declare-const var1170!1 String)
(define-const var3663 var1062 (text/-10557480 (cast-from-var1126-to-var115 var1687))) ; Statement: $r18 = r1.<jdk.internal.org.objectweb.asm.util.ASMifier: java.util.List text> 
;(assert (var1062_add/328494887 var3663 (cast-from-String-to-var3418 "public static byte[] dump () throws Exception {\n\n"))) ; Statement: interfaceinvoke $r18.<java.util.List: boolean add(java.lang.Object)>("public static byte[] dump () throws Exception {\n\n") 

(declare-const var3663!1 var1062)
(declare-const var369 String)
(define-const var2210 var1062 (text/-10557480 (cast-from-var1126-to-var115 var1687))) ; Statement: $r19 = r1.<jdk.internal.org.objectweb.asm.util.ASMifier: java.util.List text> 
;(assert (var1062_add/328494887 var2210 (cast-from-String-to-var3418 "ClassWriter cw = new ClassWriter(0);\n"))) ; Statement: interfaceinvoke $r19.<java.util.List: boolean add(java.lang.Object)>("ClassWriter cw = new ClassWriter(0);\n") 

(declare-const var2210!1 var1062)
(declare-const var3388 String)
(define-const var2336 var1062 (text/-10557480 (cast-from-var1126-to-var115 var1687))) ; Statement: $r20 = r1.<jdk.internal.org.objectweb.asm.util.ASMifier: java.util.List text> 
;(assert (var1062_add/328494887 var2336 (cast-from-String-to-var3418 "FieldVisitor fv;\n"))) ; Statement: interfaceinvoke $r20.<java.util.List: boolean add(java.lang.Object)>("FieldVisitor fv;\n") 

(declare-const var2336!1 var1062)
(declare-const var736 String)
(define-const var157 var1062 (text/-10557480 (cast-from-var1126-to-var115 var1687))) ; Statement: $r21 = r1.<jdk.internal.org.objectweb.asm.util.ASMifier: java.util.List text> 
;(assert (var1062_add/328494887 var157 (cast-from-String-to-var3418 "MethodVisitor mv;\n"))) ; Statement: interfaceinvoke $r21.<java.util.List: boolean add(java.lang.Object)>("MethodVisitor mv;\n") 

(declare-const var157!1 var1062)
(declare-const var2398 String)
(define-const var2979 var1062 (text/-10557480 (cast-from-var1126-to-var115 var1687))) ; Statement: $r22 = r1.<jdk.internal.org.objectweb.asm.util.ASMifier: java.util.List text> 
;(assert (var1062_add/328494887 var2979 (cast-from-String-to-var3418 "AnnotationVisitor av0;\n\n"))) ; Statement: interfaceinvoke $r22.<java.util.List: boolean add(java.lang.Object)>("AnnotationVisitor av0;\n\n") 

(declare-const var2979!1 var1062)
(declare-const var3097 String)
(define-const var796 String (buf/-10557480 (cast-from-var1126-to-var115 var1687))) ; Statement: $r23 = r1.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf> 
(assert true)
;(assert (setLength/163251007 var796 0)) ; Statement: virtualinvoke $r23.<java.lang.StringBuffer: void setLength(int)>(0) 

(declare-const var796!1 String)
(declare-const var1034 Int)
(define-const var667 String (buf/-10557480 (cast-from-var1126-to-var115 var1687))) ; Statement: $r24 = r1.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf> 
(assert true)
;(assert (append/1560614132 var667 "cw.visit(")) ; Statement: virtualinvoke $r24.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("cw.visit(") 
(declare-const var667!1 String)
(assert (str.prefixof var667 var667!1))
 ; Statement: lookupswitch(i2) {     case 46: goto $r39 = r1.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf>;     case 47: goto $r38 = r1.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf>;     case 48: goto $r37 = r1.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf>;     case 49: goto $r36 = r1.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf>;     case 50: goto $r35 = r1.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf>;     case 51: goto $r34 = r1.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf>;     case 196653: goto $r25 = r1.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf>;     default: goto $r40 = r1.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf>; } 
(assert (and (= var1386 196653) (and (not (= var1386 51)) (and (not (= var1386 50)) (and (not (= var1386 49)) (and (not (= var1386 48)) (and (not (= var1386 47)) (and (not (= var1386 46)) true)))))))) ; Intersect: Cond: i2 == 196653  and Intersect: Negate: Cond: i2 == 51   and Intersect: Negate: Cond: i2 == 50   and Intersect: Negate: Cond: i2 == 49   and Intersect: Negate: Cond: i2 == 48   and Intersect: Negate: Cond: i2 == 47   and Intersect: Negate: Cond: i2 == 46   and Non Conditional       
(define-const var3967 String (buf/-10557480 (cast-from-var1126-to-var115 var1687))) ; Statement: $r25 = r1.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf> 
(assert true)
;(assert (append/1560614132 var3967 "V1_1")) ; Statement: virtualinvoke $r25.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("V1_1") 
(declare-const var3967!1 String)
(assert (str.prefixof var3967 var3967!1))
 ; Statement: goto [?= $r42 = r1.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf>] 
(assert true) ; Non Conditional
(define-const var1564 String (buf/-10557480 (cast-from-var1126-to-var115 var1687))) ; Statement: $r42 = r1.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf> 
(assert true)
;(assert (append/1560614132 var1564 ", ")) ; Statement: virtualinvoke $r42.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(", ") 
(declare-const var1564!1 String)
(assert (str.prefixof var1564 var1564!1))
(define-const var1934 Int (bv2nat (bvor ((_ int2bv 64) var2009) ((_ int2bv 64) 262144)))) ; Statement: $i6 = i3 | 262144 
(assert true)
;(assert (appendAccess/732682052 var1687 var1934)) ; Statement: virtualinvoke r1.<jdk.internal.org.objectweb.asm.util.ASMifier: void appendAccess(int)>($i6) 

(declare-const var1687!1 var1126)
(declare-const var1934!1 Int)
(define-const var2148 String (buf/-10557480 (cast-from-var1126-to-var115 var1687!1))) ; Statement: $r43 = r1.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf> 
(assert true)
;(assert (append/1560614132 var2148 ", ")) ; Statement: virtualinvoke $r43.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(", ") 
(declare-const var2148!1 String)
(assert (str.prefixof var2148 var2148!1))
(assert true)
;(assert (appendConstant/2119113448 var1687!1 (cast-from-String-to-var3418 var993))) ; Statement: virtualinvoke r1.<jdk.internal.org.objectweb.asm.util.ASMifier: void appendConstant(java.lang.Object)>(r0) 

(declare-const var1687!2 var1126)
(declare-const var993!1 String)
(define-const var1945 String (buf/-10557480 (cast-from-var1126-to-var115 var1687!2))) ; Statement: $r44 = r1.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf> 
(assert true)
;(assert (append/1560614132 var1945 ", ")) ; Statement: virtualinvoke $r44.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(", ") 
(declare-const var1945!1 String)
(assert (str.prefixof var1945 var1945!1))
(assert true)
;(assert (appendConstant/2119113448 var1687!2 (cast-from-String-to-var3418 var2660))) ; Statement: virtualinvoke r1.<jdk.internal.org.objectweb.asm.util.ASMifier: void appendConstant(java.lang.Object)>(r26) 

(declare-const var1687!3 var1126)
(declare-const var2660!1 String)
(define-const var43 String (buf/-10557480 (cast-from-var1126-to-var115 var1687!3))) ; Statement: $r45 = r1.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf> 
(assert true)
;(assert (append/1560614132 var43 ", ")) ; Statement: virtualinvoke $r45.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(", ") 
(declare-const var43!1 String)
(assert (str.prefixof var43 var43!1))
(assert true)
;(assert (appendConstant/2119113448 var1687!3 (cast-from-String-to-var3418 var2487))) ; Statement: virtualinvoke r1.<jdk.internal.org.objectweb.asm.util.ASMifier: void appendConstant(java.lang.Object)>(r27) 

(declare-const var1687!4 var1126)
(declare-const var2487!1 String)
(define-const var1783 String (buf/-10557480 (cast-from-var1126-to-var115 var1687!4))) ; Statement: $r46 = r1.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf> 
(assert true)
;(assert (append/1560614132 var1783 ", ")) ; Statement: virtualinvoke $r46.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(", ") 
(declare-const var1783!1 String)
(assert (str.prefixof var1783 var1783!1))
 ; Statement: if r28 == null goto $r29 = r1.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf> 
(assert (= var1811 null-__Array__Int__String__)) ; Cond: r28 == null 
(define-const var3120 String (buf/-10557480 (cast-from-var1126-to-var115 var1687!4))) ; Statement: $r29 = r1.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf> 
(assert true)
;(assert (append/1560614132 var3120 "null")) ; Statement: virtualinvoke $r29.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("null") 
(declare-const var3120!1 String)
(assert (str.prefixof var3120 var3120!1))
(assert true) ; Non Conditional
(define-const var2069 String (buf/-10557480 (cast-from-var1126-to-var115 var1687!4))) ; Statement: $r48 = r1.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf> 
(assert true)
;(assert (append/1560614132 var2069 ");\n\n")) ; Statement: virtualinvoke $r48.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(");\n\n") 
(declare-const var2069!1 String)
(assert (str.prefixof var2069 var2069!1))
(define-const var1861 var1062 (text/-10557480 (cast-from-var1126-to-var115 var1687!4))) ; Statement: $r49 = r1.<jdk.internal.org.objectweb.asm.util.ASMifier: java.util.List text> 
(define-const var1278 String (buf/-10557480 (cast-from-var1126-to-var115 var1687!4))) ; Statement: $r50 = r1.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf> 
(assert true)
(define-const var892 String (toString/-222306083 var1278)) ; Statement: $r51 = virtualinvoke $r50.<java.lang.StringBuffer: java.lang.String toString()>() 
;(assert (var1062_add/328494887 var1861 (cast-from-String-to-var3418 var892))) ; Statement: interfaceinvoke $r49.<java.util.List: boolean add(java.lang.Object)>($r51) 

(declare-const var1861!1 var1062)
(declare-const var892!1 String)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {lastIndexOf/-1292097097=([java.lang.String, int], int), cast-from-Int-to-Int=([int], int), text/-10557480=([jdk.internal.org.objectweb.asm.util.Printer], java.util.List), cast-from-var1126-to-var115=([jdk.internal.org.objectweb.asm.util.ASMifier], jdk.internal.org.objectweb.asm.util.Printer), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), substring/-1240304868=([java.lang.String, int, int], java.lang.String), replace/1524665721=([java.lang.String, char, char], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var1062_add/328494887=([java.util.List, java.lang.Object], boolean), cast-from-String-to-var3418=([java.lang.String], java.lang.Object), substring/850833817=([java.lang.String, int], java.lang.String), buf/-10557480=([jdk.internal.org.objectweb.asm.util.Printer], java.lang.StringBuffer), setLength/163251007=([java.lang.StringBuffer, int], void), append/1560614132=([java.lang.StringBuffer, java.lang.String], java.lang.StringBuffer), appendAccess/732682052=([jdk.internal.org.objectweb.asm.util.ASMifier, int], void), appendConstant/2119113448=([jdk.internal.org.objectweb.asm.util.ASMifier, java.lang.Object], void), toString/-222306083=([java.lang.StringBuffer], java.lang.String)}
; {var1126=jdk.internal.org.objectweb.asm.util.ASMifier, var1687=r1, var1386=i2, var2009=i3, var993=r0, var2282=null_type, var2660=r26, var2487=r27, var1811=r28, var961=i0, var740=$i9, var1062=java.util.List, var115=jdk.internal.org.objectweb.asm.util.Printer, var2764=$r3, var3029=$r52, var286=$r6, var4=$r4, var3393=$r5, var2583=$r7, var3241=$r8, var903=$r9, var3418=java.lang.Object, var767=$i1, var2923=r41, var1885=$r10, var245="import java.util.*;\n", var3982=$r11, var2280="import jdk.internal.org.objectweb.asm.*;\n", var240=$r13, var2786=$r53, var22=$r14, var282=$r15, var2993=$r16, var1170=$r17, var3663=$r18, var369="public static byte[] dump () throws Exception {\n\n", var2210=$r19, var3388="ClassWriter cw = new ClassWriter(0);\n", var2336=$r20, var736="FieldVisitor fv;\n", var157=$r21, var2398="MethodVisitor mv;\n", var2979=$r22, var3097="AnnotationVisitor av0;\n\n", var796=$r23, var1034=0, var667=$r24, var3967=$r25, var1564=$r42, var1934=$i6, var2148=$r43, var1945=$r44, var43=$r45, var1783=$r46, var3120=$r29, var2069=$r48, var1861=$r49, var1278=$r50, var892=$r51}
; {jdk.internal.org.objectweb.asm.util.ASMifier=var1126, r1=var1687, i2=var1386, i3=var2009, r0=var993, null_type=var2282, r26=var2660, r27=var2487, r28=var1811, i0=var961, $i9=var740, java.util.List=var1062, jdk.internal.org.objectweb.asm.util.Printer=var115, $r3=var2764, $r52=var3029, $r6=var286, $r4=var4, $r5=var3393, $r7=var2583, $r8=var3241, $r9=var903, java.lang.Object=var3418, $i1=var767, r41=var2923, $r10=var1885, "import java.util.*;\n"=var245, $r11=var3982, "import jdk.internal.org.objectweb.asm.*;\n"=var2280, $r13=var240, $r53=var2786, $r14=var22, $r15=var282, $r16=var2993, $r17=var1170, $r18=var3663, "public static byte[] dump () throws Exception {\n\n"=var369, $r19=var2210, "ClassWriter cw = new ClassWriter(0);\n"=var3388, $r20=var2336, "FieldVisitor fv;\n"=var736, $r21=var157, "MethodVisitor mv;\n"=var2398, $r22=var2979, "AnnotationVisitor av0;\n\n"=var3097, $r23=var796, 0=var1034, $r24=var667, $r25=var3967, $r42=var1564, $i6=var1934, $r43=var2148, $r44=var1945, $r45=var43, $r46=var1783, $r29=var3120, $r48=var2069, $r49=var1861, $r50=var1278, $r51=var892}
;seq <java.lang.String: int lastIndexOf(int)>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.String: java.lang.String substring(int,int)>;	<java.lang.String: java.lang.String replace(char,char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.String: java.lang.String substring(int)>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuffer: void setLength(int)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.String toString()>
;cnt {"<java.lang.String: int lastIndexOf(int)>": 1,"<java.lang.StringBuilder: void <init>()>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 6,"<java.lang.String: java.lang.String substring(int,int)>": 1,"<java.lang.String: java.lang.String replace(char,char)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 2,"<java.lang.String: java.lang.String substring(int)>": 1,"<java.lang.StringBuffer: void setLength(int)>": 1,"<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>": 9,"<java.lang.StringBuffer: java.lang.String toString()>": 1}
;stmts r1 := @this: jdk.internal.org.objectweb.asm.util.ASMifier;	i2 := @parameter0: int;	i3 := @parameter1: int;	r0 := @parameter2: java.lang.String;	r26 := @parameter3: java.lang.String;	r27 := @parameter4: java.lang.String;	r28 := @parameter5: java.lang.String[];	i0 = virtualinvoke r0.<java.lang.String: int lastIndexOf(int)>(47);	$i9 = (int) -1;	if i0 != $i9 goto $r3 = r1.<jdk.internal.org.objectweb.asm.util.ASMifier: java.util.List text>;	$r3 = r1.<jdk.internal.org.objectweb.asm.util.ASMifier: java.util.List text>;	$r52 = new java.lang.StringBuilder;	specialinvoke $r52.<java.lang.StringBuilder: void <init>()>();	$r6 = virtualinvoke $r52.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("package asm.");	$r4 = virtualinvoke r0.<java.lang.String: java.lang.String substring(int,int)>(0, i0);	$r5 = virtualinvoke $r4.<java.lang.String: java.lang.String replace(char,char)>(47, 46);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(";\n");	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	interfaceinvoke $r3.<java.util.List: boolean add(java.lang.Object)>($r9);	$i1 = i0 + 1;	r41 = virtualinvoke r0.<java.lang.String: java.lang.String substring(int)>($i1);	$r10 = r1.<jdk.internal.org.objectweb.asm.util.ASMifier: java.util.List text>;	interfaceinvoke $r10.<java.util.List: boolean add(java.lang.Object)>("import java.util.*;\n");	$r11 = r1.<jdk.internal.org.objectweb.asm.util.ASMifier: java.util.List text>;	interfaceinvoke $r11.<java.util.List: boolean add(java.lang.Object)>("import jdk.internal.org.objectweb.asm.*;\n");	$r13 = r1.<jdk.internal.org.objectweb.asm.util.ASMifier: java.util.List text>;	$r53 = new java.lang.StringBuilder;	specialinvoke $r53.<java.lang.StringBuilder: void <init>()>();	$r14 = virtualinvoke $r53.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("public class ");	$r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r41);	$r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Dump implements Opcodes {\n\n");	$r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.String toString()>();	interfaceinvoke $r13.<java.util.List: boolean add(java.lang.Object)>($r17);	$r18 = r1.<jdk.internal.org.objectweb.asm.util.ASMifier: java.util.List text>;	interfaceinvoke $r18.<java.util.List: boolean add(java.lang.Object)>("public static byte[] dump () throws Exception {\n\n");	$r19 = r1.<jdk.internal.org.objectweb.asm.util.ASMifier: java.util.List text>;	interfaceinvoke $r19.<java.util.List: boolean add(java.lang.Object)>("ClassWriter cw = new ClassWriter(0);\n");	$r20 = r1.<jdk.internal.org.objectweb.asm.util.ASMifier: java.util.List text>;	interfaceinvoke $r20.<java.util.List: boolean add(java.lang.Object)>("FieldVisitor fv;\n");	$r21 = r1.<jdk.internal.org.objectweb.asm.util.ASMifier: java.util.List text>;	interfaceinvoke $r21.<java.util.List: boolean add(java.lang.Object)>("MethodVisitor mv;\n");	$r22 = r1.<jdk.internal.org.objectweb.asm.util.ASMifier: java.util.List text>;	interfaceinvoke $r22.<java.util.List: boolean add(java.lang.Object)>("AnnotationVisitor av0;\n\n");	$r23 = r1.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf>;	virtualinvoke $r23.<java.lang.StringBuffer: void setLength(int)>(0);	$r24 = r1.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf>;	virtualinvoke $r24.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("cw.visit(");	lookupswitch(i2) {     case 46: goto $r39 = r1.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf>;     case 47: goto $r38 = r1.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf>;     case 48: goto $r37 = r1.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf>;     case 49: goto $r36 = r1.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf>;     case 50: goto $r35 = r1.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf>;     case 51: goto $r34 = r1.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf>;     case 196653: goto $r25 = r1.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf>;     default: goto $r40 = r1.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf>; };	$r25 = r1.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf>;	virtualinvoke $r25.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("V1_1");	goto [?= $r42 = r1.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf>];	$r42 = r1.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf>;	virtualinvoke $r42.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(", ");	$i6 = i3 | 262144;	virtualinvoke r1.<jdk.internal.org.objectweb.asm.util.ASMifier: void appendAccess(int)>($i6);	$r43 = r1.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf>;	virtualinvoke $r43.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(", ");	virtualinvoke r1.<jdk.internal.org.objectweb.asm.util.ASMifier: void appendConstant(java.lang.Object)>(r0);	$r44 = r1.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf>;	virtualinvoke $r44.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(", ");	virtualinvoke r1.<jdk.internal.org.objectweb.asm.util.ASMifier: void appendConstant(java.lang.Object)>(r26);	$r45 = r1.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf>;	virtualinvoke $r45.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(", ");	virtualinvoke r1.<jdk.internal.org.objectweb.asm.util.ASMifier: void appendConstant(java.lang.Object)>(r27);	$r46 = r1.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf>;	virtualinvoke $r46.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(", ");	if r28 == null goto $r29 = r1.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf>;	$r29 = r1.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf>;	virtualinvoke $r29.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("null");	$r48 = r1.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf>;	virtualinvoke $r48.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(");\n\n");	$r49 = r1.<jdk.internal.org.objectweb.asm.util.ASMifier: java.util.List text>;	$r50 = r1.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf>;	$r51 = virtualinvoke $r50.<java.lang.StringBuffer: java.lang.String toString()>();	interfaceinvoke $r49.<java.util.List: boolean add(java.lang.Object)>($r51);	return
;block_num 7