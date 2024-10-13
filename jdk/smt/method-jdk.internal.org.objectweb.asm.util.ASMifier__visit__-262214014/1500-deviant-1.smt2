(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1452 0)
(declare-sort var3917 0)
(declare-sort var3244 0)
(declare-sort var3303 0)
(declare-sort var1137 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun lastIndexOf/-1292097097 (String Int) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun text/-10557480 (var3303) var3244)
(declare-fun cast-from-var1452-to-var3303 (var1452) var3303)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun substring/-1240304868 ((s String) (begin Int) (end Int)) String (str.substr s begin (- end begin)))
(define-fun replace/1524665721 ((s String) (old_char Int) (new_char Int)) String (str.replace_all s (str.from_code old_char) (str.from_code new_char)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var3244_add/328494887 (var3244 var1137) Bool)
(declare-fun cast-from-String-to-var1137 (String) var1137)
(define-fun substring/850833817 ((s String) (begin Int)) String (str.substr s begin (- (str.len s) begin)))
(declare-fun buf/-10557480 (var3303) String)
(declare-fun setLength/163251007 (String Int) void)
(define-fun append/1560614132 ((s String) (tail String)) String (str.++ s tail))
(declare-fun appendAccess/732682052 (var1452 Int) void)
(declare-fun appendConstant/2119113448 (var1452 var1137) void)
(define-fun toString/-222306083 ((s String)) String s)
(declare-const null-var1452 var1452)
(declare-const null-Int Int)
(declare-const null-String String)
(declare-const null-__Array__Int__String__ (Array Int String))
(declare-const var2527 var1452) ; Statement: r1 := @this: jdk.internal.org.objectweb.asm.util.ASMifier 
(assert (not (= var2527 null-var1452)))
(declare-const var1216 Int) ; Statement: i2 := @parameter0: int 
(assert (not (= var1216 null-Int)))
(declare-const var1527 Int) ; Statement: i3 := @parameter1: int 
(assert (not (= var1527 null-Int)))
(declare-const var3961 String) ; Statement: r0 := @parameter2: java.lang.String 
(assert (not (= var3961 null-String)))
(declare-const var3883 String) ; Statement: r26 := @parameter3: java.lang.String 
(assert (not (= var3883 null-String)))
(declare-const var3291 String) ; Statement: r27 := @parameter4: java.lang.String 
(assert (not (= var3291 null-String)))
(declare-const var430 (Array Int String)) ; Statement: r28 := @parameter5: java.lang.String[] 
(assert (not (= var430 null-__Array__Int__String__)))
(assert true)
(define-const var3820 Int (lastIndexOf/-1292097097 var3961 47)) ; Statement: i0 = virtualinvoke r0.<java.lang.String: int lastIndexOf(int)>(47) 
(define-const var1079 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i9 = (int) -1 
 ; Statement: if i0 != $i9 goto $r3 = r1.<jdk.internal.org.objectweb.asm.util.ASMifier: java.util.List text> 
(assert (not (= var3820 var1079))) ; Cond: i0 != $i9 
(define-const var2151 var3244 (text/-10557480 (cast-from-var1452-to-var3303 var2527))) ; Statement: $r3 = r1.<jdk.internal.org.objectweb.asm.util.ASMifier: java.util.List text> 
(define-const var3108 String String-init) ; Statement: $r52 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3108)) ; Statement: specialinvoke $r52.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3108!1 String)
(assert (= var3108!1 ""))
(assert true)
(define-const var2812 String (append/672562846 var3108!1 "package asm.")) ; Statement: $r6 = virtualinvoke $r52.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("package asm.") 
(declare-const var3108!2 String)
(assert (= var3108!2 (str.++ var3108!1 "package asm.")))
(assert (and true (and (>= 0 0) (>= (str.len var3961) var3820) (>= var3820 0))))
(define-const var3604 String (substring/-1240304868 var3961 0 var3820)) ; Statement: $r4 = virtualinvoke r0.<java.lang.String: java.lang.String substring(int,int)>(0, i0) 
(assert true)
(define-const var760 String (replace/1524665721 var3604 47 46)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.String: java.lang.String replace(char,char)>(47, 46) 
(assert true)
(define-const var3770 String (append/672562846 var2812 var760)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5) 
(declare-const var2812!1 String)
(assert (= var2812!1 (str.++ var2812 var760)))
(assert true)
(define-const var3085 String (append/672562846 var3770 ";\n")) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(";\n") 
(declare-const var3770!1 String)
(assert (= var3770!1 (str.++ var3770 ";\n")))
(assert true)
(define-const var1515 String (toString/-2075883882 var3085)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
;(assert (var3244_add/328494887 var2151 (cast-from-String-to-var1137 var1515))) ; Statement: interfaceinvoke $r3.<java.util.List: boolean add(java.lang.Object)>($r9) 

(declare-const var2151!1 var3244)
(declare-const var1515!1 String)
(define-const var2499 Int (+ var3820 1)) ; Statement: $i1 = i0 + 1 
(assert (not (and true (and (>= var2499 0) (>= (str.len var3961) var2499)))))
(check-sat)
(get-model)
(get-unsat-core)
; {lastIndexOf/-1292097097=([java.lang.String, int], int), cast-from-Int-to-Int=([int], int), text/-10557480=([jdk.internal.org.objectweb.asm.util.Printer], java.util.List), cast-from-var1452-to-var3303=([jdk.internal.org.objectweb.asm.util.ASMifier], jdk.internal.org.objectweb.asm.util.Printer), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), substring/-1240304868=([java.lang.String, int, int], java.lang.String), replace/1524665721=([java.lang.String, char, char], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var3244_add/328494887=([java.util.List, java.lang.Object], boolean), cast-from-String-to-var1137=([java.lang.String], java.lang.Object), substring/850833817=([java.lang.String, int], java.lang.String), buf/-10557480=([jdk.internal.org.objectweb.asm.util.Printer], java.lang.StringBuffer), setLength/163251007=([java.lang.StringBuffer, int], void), append/1560614132=([java.lang.StringBuffer, java.lang.String], java.lang.StringBuffer), appendAccess/732682052=([jdk.internal.org.objectweb.asm.util.ASMifier, int], void), appendConstant/2119113448=([jdk.internal.org.objectweb.asm.util.ASMifier, java.lang.Object], void), toString/-222306083=([java.lang.StringBuffer], java.lang.String)}
; {var1452=jdk.internal.org.objectweb.asm.util.ASMifier, var2527=r1, var1216=i2, var1527=i3, var3961=r0, var3917=null_type, var3883=r26, var3291=r27, var430=r28, var3820=i0, var1079=$i9, var3244=java.util.List, var3303=jdk.internal.org.objectweb.asm.util.Printer, var2151=$r3, var3108=$r52, var2812=$r6, var3604=$r4, var760=$r5, var3770=$r7, var3085=$r8, var1515=$r9, var1137=java.lang.Object, var2499=$i1, var1959=r41, var805=$r10, var2696="import java.util.*;\n", var2567=$r11, var1363="import jdk.internal.org.objectweb.asm.*;\n", var251=$r13, var345=$r53, var3462=$r14, var3815=$r15, var449=$r16, var1680=$r17, var1897=$r18, var799="public static byte[] dump () throws Exception {\n\n", var788=$r19, var1967="ClassWriter cw = new ClassWriter(0);\n", var1337=$r20, var783="FieldVisitor fv;\n", var866=$r21, var932="MethodVisitor mv;\n", var483=$r22, var189="AnnotationVisitor av0;\n\n", var3256=$r23, var3464=0, var2869=$r24, var2196=$r39, var281=$r42, var464=$i6, var2530=$r43, var16=$r44, var342=$r45, var381=$r46, var2639=$r29, var3105=$r48, var1338=$r49, var358=$r50, var3080=$r51}
; {jdk.internal.org.objectweb.asm.util.ASMifier=var1452, r1=var2527, i2=var1216, i3=var1527, r0=var3961, null_type=var3917, r26=var3883, r27=var3291, r28=var430, i0=var3820, $i9=var1079, java.util.List=var3244, jdk.internal.org.objectweb.asm.util.Printer=var3303, $r3=var2151, $r52=var3108, $r6=var2812, $r4=var3604, $r5=var760, $r7=var3770, $r8=var3085, $r9=var1515, java.lang.Object=var1137, $i1=var2499, r41=var1959, $r10=var805, "import java.util.*;\n"=var2696, $r11=var2567, "import jdk.internal.org.objectweb.asm.*;\n"=var1363, $r13=var251, $r53=var345, $r14=var3462, $r15=var3815, $r16=var449, $r17=var1680, $r18=var1897, "public static byte[] dump () throws Exception {\n\n"=var799, $r19=var788, "ClassWriter cw = new ClassWriter(0);\n"=var1967, $r20=var1337, "FieldVisitor fv;\n"=var783, $r21=var866, "MethodVisitor mv;\n"=var932, $r22=var483, "AnnotationVisitor av0;\n\n"=var189, $r23=var3256, 0=var3464, $r24=var2869, $r39=var2196, $r42=var281, $i6=var464, $r43=var2530, $r44=var16, $r45=var342, $r46=var381, $r29=var2639, $r48=var3105, $r49=var1338, $r50=var358, $r51=var3080}
;seq <java.lang.String: int lastIndexOf(int)>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.String: java.lang.String substring(int,int)>;	<java.lang.String: java.lang.String replace(char,char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.String: java.lang.String substring(int)>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuffer: void setLength(int)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.String toString()>
;cnt {"<java.lang.String: int lastIndexOf(int)>": 1,"<java.lang.StringBuilder: void <init>()>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 6,"<java.lang.String: java.lang.String substring(int,int)>": 1,"<java.lang.String: java.lang.String replace(char,char)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 2,"<java.lang.String: java.lang.String substring(int)>": 1,"<java.lang.StringBuffer: void setLength(int)>": 1,"<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>": 9,"<java.lang.StringBuffer: java.lang.String toString()>": 1}
;stmts r1 := @this: jdk.internal.org.objectweb.asm.util.ASMifier;	i2 := @parameter0: int;	i3 := @parameter1: int;	r0 := @parameter2: java.lang.String;	r26 := @parameter3: java.lang.String;	r27 := @parameter4: java.lang.String;	r28 := @parameter5: java.lang.String[];	i0 = virtualinvoke r0.<java.lang.String: int lastIndexOf(int)>(47);	$i9 = (int) -1;	if i0 != $i9 goto $r3 = r1.<jdk.internal.org.objectweb.asm.util.ASMifier: java.util.List text>;	$r3 = r1.<jdk.internal.org.objectweb.asm.util.ASMifier: java.util.List text>;	$r52 = new java.lang.StringBuilder;	specialinvoke $r52.<java.lang.StringBuilder: void <init>()>();	$r6 = virtualinvoke $r52.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("package asm.");	$r4 = virtualinvoke r0.<java.lang.String: java.lang.String substring(int,int)>(0, i0);	$r5 = virtualinvoke $r4.<java.lang.String: java.lang.String replace(char,char)>(47, 46);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(";\n");	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	interfaceinvoke $r3.<java.util.List: boolean add(java.lang.Object)>($r9);	$i1 = i0 + 1;	r41 = virtualinvoke r0.<java.lang.String: java.lang.String substring(int)>($i1);	$r10 = r1.<jdk.internal.org.objectweb.asm.util.ASMifier: java.util.List text>;	interfaceinvoke $r10.<java.util.List: boolean add(java.lang.Object)>("import java.util.*;\n");	$r11 = r1.<jdk.internal.org.objectweb.asm.util.ASMifier: java.util.List text>;	interfaceinvoke $r11.<java.util.List: boolean add(java.lang.Object)>("import jdk.internal.org.objectweb.asm.*;\n");	$r13 = r1.<jdk.internal.org.objectweb.asm.util.ASMifier: java.util.List text>;	$r53 = new java.lang.StringBuilder;	specialinvoke $r53.<java.lang.StringBuilder: void <init>()>();	$r14 = virtualinvoke $r53.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("public class ");	$r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r41);	$r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Dump implements Opcodes {\n\n");	$r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.String toString()>();	interfaceinvoke $r13.<java.util.List: boolean add(java.lang.Object)>($r17);	$r18 = r1.<jdk.internal.org.objectweb.asm.util.ASMifier: java.util.List text>;	interfaceinvoke $r18.<java.util.List: boolean add(java.lang.Object)>("public static byte[] dump () throws Exception {\n\n");	$r19 = r1.<jdk.internal.org.objectweb.asm.util.ASMifier: java.util.List text>;	interfaceinvoke $r19.<java.util.List: boolean add(java.lang.Object)>("ClassWriter cw = new ClassWriter(0);\n");	$r20 = r1.<jdk.internal.org.objectweb.asm.util.ASMifier: java.util.List text>;	interfaceinvoke $r20.<java.util.List: boolean add(java.lang.Object)>("FieldVisitor fv;\n");	$r21 = r1.<jdk.internal.org.objectweb.asm.util.ASMifier: java.util.List text>;	interfaceinvoke $r21.<java.util.List: boolean add(java.lang.Object)>("MethodVisitor mv;\n");	$r22 = r1.<jdk.internal.org.objectweb.asm.util.ASMifier: java.util.List text>;	interfaceinvoke $r22.<java.util.List: boolean add(java.lang.Object)>("AnnotationVisitor av0;\n\n");	$r23 = r1.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf>;	virtualinvoke $r23.<java.lang.StringBuffer: void setLength(int)>(0);	$r24 = r1.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf>;	virtualinvoke $r24.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("cw.visit(");	lookupswitch(i2) {     case 46: goto $r39 = r1.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf>;     case 47: goto $r38 = r1.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf>;     case 48: goto $r37 = r1.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf>;     case 49: goto $r36 = r1.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf>;     case 50: goto $r35 = r1.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf>;     case 51: goto $r34 = r1.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf>;     case 196653: goto $r25 = r1.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf>;     default: goto $r40 = r1.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf>; };	$r39 = r1.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf>;	virtualinvoke $r39.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("V1_2");	goto [?= $r42 = r1.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf>];	$r42 = r1.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf>;	virtualinvoke $r42.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(", ");	$i6 = i3 | 262144;	virtualinvoke r1.<jdk.internal.org.objectweb.asm.util.ASMifier: void appendAccess(int)>($i6);	$r43 = r1.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf>;	virtualinvoke $r43.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(", ");	virtualinvoke r1.<jdk.internal.org.objectweb.asm.util.ASMifier: void appendConstant(java.lang.Object)>(r0);	$r44 = r1.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf>;	virtualinvoke $r44.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(", ");	virtualinvoke r1.<jdk.internal.org.objectweb.asm.util.ASMifier: void appendConstant(java.lang.Object)>(r26);	$r45 = r1.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf>;	virtualinvoke $r45.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(", ");	virtualinvoke r1.<jdk.internal.org.objectweb.asm.util.ASMifier: void appendConstant(java.lang.Object)>(r27);	$r46 = r1.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf>;	virtualinvoke $r46.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(", ");	if r28 == null goto $r29 = r1.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf>;	$r29 = r1.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf>;	virtualinvoke $r29.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("null");	$r48 = r1.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf>;	virtualinvoke $r48.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(");\n\n");	$r49 = r1.<jdk.internal.org.objectweb.asm.util.ASMifier: java.util.List text>;	$r50 = r1.<jdk.internal.org.objectweb.asm.util.ASMifier: java.lang.StringBuffer buf>;	$r51 = virtualinvoke $r50.<java.lang.StringBuffer: java.lang.String toString()>();	interfaceinvoke $r49.<java.util.List: boolean add(java.lang.Object)>($r51);	return
;block_num 7