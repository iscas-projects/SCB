(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1152 0)
(declare-sort var2142 0)
(declare-sort var670 0)
(declare-sort var3667 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun remapper/856331938 (var1152) var670)
(declare-fun className/856331938 (var1152) String)
(declare-fun mapType/1615207449 (var670 String) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1166366385 (String Int) String)
(define-fun toString/-2075883882 ((s String)) String s)
(define-fun startsWith/-1785782452 ((s String) (prefix String)) Bool (str.prefixof prefix s))
(declare-fun lastIndexOf/-1292097097 (String Int) Int)
(declare-fun v/856331938 (var1152) var3667)
(define-fun substring/850833817 ((s String) (begin Int)) String (str.substr s begin (- (str.len s) begin)))
(declare-fun visitInnerClassType/-292915065 (var3667 String) void)
(declare-const null-var1152 var1152)
(declare-const null-String String)
(declare-const var3668 var1152) ; Statement: r1 := @this: jdk.internal.org.objectweb.asm.commons.RemappingSignatureAdapter 
(assert (not (= var3668 null-var1152)))
(declare-const var223 String) ; Statement: r11 := @parameter0: java.lang.String 
(assert (not (= var223 null-String)))
(define-const var1223 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1223)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1223!1 String)
(assert (= var1223!1 ""))
(define-const var1685 var670 (remapper/856331938 var3668)) ; Statement: $r3 = r1.<jdk.internal.org.objectweb.asm.commons.RemappingSignatureAdapter: jdk.internal.org.objectweb.asm.commons.Remapper remapper> 
(define-const var1192 String (className/856331938 var3668)) ; Statement: $r2 = r1.<jdk.internal.org.objectweb.asm.commons.RemappingSignatureAdapter: java.lang.String className> 
(assert true)
(define-const var395 String (mapType/1615207449 var1685 var1192)) ; Statement: $r4 = virtualinvoke $r3.<jdk.internal.org.objectweb.asm.commons.Remapper: java.lang.String mapType(java.lang.String)>($r2) 
(assert true)
(define-const var672 String (append/672562846 var1223!1 var395)) ; Statement: $r5 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4) 
(declare-const var1223!2 String)
(assert (= var1223!2 (str.++ var1223!1 var395)))
(assert true)
(define-const var2774 String (append/-1166366385 var672 36)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(36) 
(declare-const var672!1 String)
(assert (str.prefixof var672 var672!1))
(assert true)
(define-const var3871 String (toString/-2075883882 var2774)) ; Statement: r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var51 String String-init) ; Statement: $r8 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var51)) ; Statement: specialinvoke $r8.<java.lang.StringBuilder: void <init>()>() 
(declare-const var51!1 String)
(assert (= var51!1 ""))
(define-const var2501 String (className/856331938 var3668)) ; Statement: $r9 = r1.<jdk.internal.org.objectweb.asm.commons.RemappingSignatureAdapter: java.lang.String className> 
(assert true)
(define-const var322 String (append/672562846 var51!1 var2501)) ; Statement: $r10 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9) 
(declare-const var51!2 String)
(assert (= var51!2 (str.++ var51!1 var2501)))
(assert true)
(define-const var2423 String (append/-1166366385 var322 36)) ; Statement: $r12 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(36) 
(declare-const var322!1 String)
(assert (str.prefixof var322 var322!1))
(assert true)
(define-const var2598 String (append/672562846 var2423 var223)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r11) 
(declare-const var2423!1 String)
(assert (= var2423!1 (str.++ var2423 var223)))
(assert true)
(define-const var277 String (toString/-2075883882 var2598)) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>() 
(declare-const var3668!1 var1152)
(assert (not (= var3668!1 null-var1152)))
(assert (= (className/856331938 var3668!1) var277)) ; Statement: r1.<jdk.internal.org.objectweb.asm.commons.RemappingSignatureAdapter: java.lang.String className> = $r14 
(define-const var498 var670 (remapper/856331938 var3668!1)) ; Statement: $r16 = r1.<jdk.internal.org.objectweb.asm.commons.RemappingSignatureAdapter: jdk.internal.org.objectweb.asm.commons.Remapper remapper> 
(define-const var2079 String (className/856331938 var3668!1)) ; Statement: $r15 = r1.<jdk.internal.org.objectweb.asm.commons.RemappingSignatureAdapter: java.lang.String className> 
(assert true)
(define-const var233 String (mapType/1615207449 var498 var2079)) ; Statement: r17 = virtualinvoke $r16.<jdk.internal.org.objectweb.asm.commons.Remapper: java.lang.String mapType(java.lang.String)>($r15) 
(assert true)
(define-const var1062 Bool (startsWith/-1785782452 var233 var3871)) ; Statement: $z0 = virtualinvoke r17.<java.lang.String: boolean startsWith(java.lang.String)>(r7) 
 ; Statement: if $z0 == 0 goto $i0 = virtualinvoke r17.<java.lang.String: int lastIndexOf(int)>(36) 
(assert (= (ite var1062 1 0) 0)) ; Cond: $z0 == 0 
(assert true)
(define-const var3706 Int (lastIndexOf/-1292097097 var233 36)) ; Statement: $i0 = virtualinvoke r17.<java.lang.String: int lastIndexOf(int)>(36) 
(define-const var1140 Int (+ var3706 1)) ; Statement: $i1 = $i0 + 1 
(assert true) ; Non Conditional
(define-const var792 var3667 (v/856331938 var3668!1)) ; Statement: $r18 = r1.<jdk.internal.org.objectweb.asm.commons.RemappingSignatureAdapter: jdk.internal.org.objectweb.asm.signature.SignatureVisitor v> 
(assert (and true (and (>= var1140 0) (>= (str.len var233) var1140))))
(define-const var2083 String (substring/850833817 var233 var1140)) ; Statement: $r19 = virtualinvoke r17.<java.lang.String: java.lang.String substring(int)>($i1) 
(assert true)
;(assert (visitInnerClassType/-292915065 var792 var2083)) ; Statement: virtualinvoke $r18.<jdk.internal.org.objectweb.asm.signature.SignatureVisitor: void visitInnerClassType(java.lang.String)>($r19) 

(declare-const var792!1 var3667)
(declare-const var2083!1 String)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), remapper/856331938=([jdk.internal.org.objectweb.asm.commons.RemappingSignatureAdapter], jdk.internal.org.objectweb.asm.commons.Remapper), className/856331938=([jdk.internal.org.objectweb.asm.commons.RemappingSignatureAdapter], java.lang.String), mapType/1615207449=([jdk.internal.org.objectweb.asm.commons.Remapper, java.lang.String], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), startsWith/-1785782452=([java.lang.String, java.lang.String], boolean), lastIndexOf/-1292097097=([java.lang.String, int], int), v/856331938=([jdk.internal.org.objectweb.asm.commons.RemappingSignatureAdapter], jdk.internal.org.objectweb.asm.signature.SignatureVisitor), substring/850833817=([java.lang.String, int], java.lang.String), visitInnerClassType/-292915065=([jdk.internal.org.objectweb.asm.signature.SignatureVisitor, java.lang.String], void)}
; {var1152=jdk.internal.org.objectweb.asm.commons.RemappingSignatureAdapter, var3668=r1, var223=r11, var2142=null_type, var1223=$r0, var670=jdk.internal.org.objectweb.asm.commons.Remapper, var1685=$r3, var1192=$r2, var395=$r4, var672=$r5, var2774=$r6, var3871=r7, var51=$r8, var2501=$r9, var322=$r10, var2423=$r12, var2598=$r13, var277=$r14, var498=$r16, var2079=$r15, var233=r17, var1062=$z0, var3706=$i0, var1140=$i1, var3667=jdk.internal.org.objectweb.asm.signature.SignatureVisitor, var792=$r18, var2083=$r19}
; {jdk.internal.org.objectweb.asm.commons.RemappingSignatureAdapter=var1152, r1=var3668, r11=var223, null_type=var2142, $r0=var1223, jdk.internal.org.objectweb.asm.commons.Remapper=var670, $r3=var1685, $r2=var1192, $r4=var395, $r5=var672, $r6=var2774, r7=var3871, $r8=var51, $r9=var2501, $r10=var322, $r12=var2423, $r13=var2598, $r14=var277, $r16=var498, $r15=var2079, r17=var233, $z0=var1062, $i0=var3706, $i1=var1140, jdk.internal.org.objectweb.asm.signature.SignatureVisitor=var3667, $r18=var792, $r19=var2083}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.String: boolean startsWith(java.lang.String)>;	<java.lang.String: int lastIndexOf(int)>;	<java.lang.String: java.lang.String substring(int)>
;cnt {"<java.lang.StringBuilder: void <init>()>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 2,"<java.lang.String: boolean startsWith(java.lang.String)>": 1,"<java.lang.String: int lastIndexOf(int)>": 1,"<java.lang.String: java.lang.String substring(int)>": 1}
;stmts r1 := @this: jdk.internal.org.objectweb.asm.commons.RemappingSignatureAdapter;	r11 := @parameter0: java.lang.String;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r3 = r1.<jdk.internal.org.objectweb.asm.commons.RemappingSignatureAdapter: jdk.internal.org.objectweb.asm.commons.Remapper remapper>;	$r2 = r1.<jdk.internal.org.objectweb.asm.commons.RemappingSignatureAdapter: java.lang.String className>;	$r4 = virtualinvoke $r3.<jdk.internal.org.objectweb.asm.commons.Remapper: java.lang.String mapType(java.lang.String)>($r2);	$r5 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(36);	r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	$r8 = new java.lang.StringBuilder;	specialinvoke $r8.<java.lang.StringBuilder: void <init>()>();	$r9 = r1.<jdk.internal.org.objectweb.asm.commons.RemappingSignatureAdapter: java.lang.String className>;	$r10 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9);	$r12 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(36);	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r11);	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>();	r1.<jdk.internal.org.objectweb.asm.commons.RemappingSignatureAdapter: java.lang.String className> = $r14;	$r16 = r1.<jdk.internal.org.objectweb.asm.commons.RemappingSignatureAdapter: jdk.internal.org.objectweb.asm.commons.Remapper remapper>;	$r15 = r1.<jdk.internal.org.objectweb.asm.commons.RemappingSignatureAdapter: java.lang.String className>;	r17 = virtualinvoke $r16.<jdk.internal.org.objectweb.asm.commons.Remapper: java.lang.String mapType(java.lang.String)>($r15);	$z0 = virtualinvoke r17.<java.lang.String: boolean startsWith(java.lang.String)>(r7);	if $z0 == 0 goto $i0 = virtualinvoke r17.<java.lang.String: int lastIndexOf(int)>(36);	$i0 = virtualinvoke r17.<java.lang.String: int lastIndexOf(int)>(36);	$i1 = $i0 + 1;	$r18 = r1.<jdk.internal.org.objectweb.asm.commons.RemappingSignatureAdapter: jdk.internal.org.objectweb.asm.signature.SignatureVisitor v>;	$r19 = virtualinvoke r17.<java.lang.String: java.lang.String substring(int)>($i1);	virtualinvoke $r18.<jdk.internal.org.objectweb.asm.signature.SignatureVisitor: void visitInnerClassType(java.lang.String)>($r19);	return
;block_num 3