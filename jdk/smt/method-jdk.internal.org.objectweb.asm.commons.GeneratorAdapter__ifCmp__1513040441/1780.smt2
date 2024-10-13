(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1016 0)
(declare-sort var1079 0)
(declare-sort var3167 0)
(declare-sort var3853 0)
(declare-sort var904 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getSort/-803576920 (var1079) Int)
(declare-fun var3853-init () var3853)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var904) String)
(declare-fun cast-from-var1079-to-var904 (var1079) var904)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/875830710 (var3853 String) void)
(declare-const null-var1016 var1016)
(declare-const null-var1079 var1079)
(declare-const null-Int Int)
(declare-const null-var3167 var3167)
(declare-const var3426 var1016) ; Statement: r1 := @this: jdk.internal.org.objectweb.asm.commons.GeneratorAdapter 
(assert (not (= var3426 null-var1016)))
(declare-const var1002 var1079) ; Statement: r0 := @parameter0: jdk.internal.org.objectweb.asm.Type 
(assert (not (= var1002 null-var1079)))
(declare-const var3242 Int) ; Statement: i1 := @parameter1: int 
(assert (not (= var3242 null-Int)))
(declare-const var3915 var3167) ; Statement: r2 := @parameter2: jdk.internal.org.objectweb.asm.Label 
(assert (not (= var3915 null-var3167)))
(assert true)
(define-const var2187 Int (getSort/-803576920 var1002)) ; Statement: $i0 = virtualinvoke r0.<jdk.internal.org.objectweb.asm.Type: int getSort()>() 
 ; Statement: tableswitch($i0) {     case 6: goto $r12 = r1.<jdk.internal.org.objectweb.asm.commons.GeneratorAdapter: jdk.internal.org.objectweb.asm.MethodVisitor mv>;     case 7: goto $r11 = r1.<jdk.internal.org.objectweb.asm.commons.GeneratorAdapter: jdk.internal.org.objectweb.asm.MethodVisitor mv>;     case 8: goto $r10 = r1.<jdk.internal.org.objectweb.asm.commons.GeneratorAdapter: jdk.internal.org.objectweb.asm.MethodVisitor mv>;     case 9: goto lookupswitch(i1) {     case 153: goto $r4 = r1.<jdk.internal.org.objectweb.asm.commons.GeneratorAdapter: jdk.internal.org.objectweb.asm.MethodVisitor mv>;     case 154: goto $r3 = r1.<jdk.internal.org.objectweb.asm.commons.GeneratorAdapter: jdk.internal.org.objectweb.asm.MethodVisitor mv>;     default: goto $r5 = new java.lang.IllegalArgumentException; };     case 10: goto lookupswitch(i1) {     case 153: goto $r4 = r1.<jdk.internal.org.objectweb.asm.commons.GeneratorAdapter: jdk.internal.org.objectweb.asm.MethodVisitor mv>;     case 154: goto $r3 = r1.<jdk.internal.org.objectweb.asm.commons.GeneratorAdapter: jdk.internal.org.objectweb.asm.MethodVisitor mv>;     default: goto $r5 = new java.lang.IllegalArgumentException; };     default: goto s4 = -1; } 
(assert (and (= var2187 9) (and (not (= var2187 8)) (and (not (= var2187 7)) (and (not (= var2187 6)) true))))) ; Intersect: Cond: $i0 == 9  and Intersect: Negate: Cond: $i0 == 8   and Intersect: Negate: Cond: $i0 == 7   and Intersect: Negate: Cond: $i0 == 6   and Non Conditional    
 ; Statement: lookupswitch(i1) {     case 153: goto $r4 = r1.<jdk.internal.org.objectweb.asm.commons.GeneratorAdapter: jdk.internal.org.objectweb.asm.MethodVisitor mv>;     case 154: goto $r3 = r1.<jdk.internal.org.objectweb.asm.commons.GeneratorAdapter: jdk.internal.org.objectweb.asm.MethodVisitor mv>;     default: goto $r5 = new java.lang.IllegalArgumentException; } 
(assert (and (not (= var3242 154)) (and (not (= var3242 153)) true))) ; Intersect: Negate: Cond: i1 == 154   and Intersect: Negate: Cond: i1 == 153   and Non Conditional  
(define-const var685 var3853 var3853-init) ; Statement: $r5 = new java.lang.IllegalArgumentException 
(define-const var1227 String String-init) ; Statement: $r6 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1227)) ; Statement: specialinvoke $r6.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1227!1 String)
(assert (= var1227!1 ""))
(assert true)
(define-const var3752 String (append/672562846 var1227!1 "Bad comparison for type ")) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Bad comparison for type ") 
(declare-const var1227!2 String)
(assert (= var1227!2 (str.++ var1227!1 "Bad comparison for type ")))
(assert true)
(define-const var2966 String (append/-1031950772 var3752 (cast-from-var1079-to-var904 var1002))) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r0) 
(declare-const var3752!1 String)
(assert (str.prefixof var3752 var3752!1))
(assert true)
(define-const var2306 String (toString/-2075883882 var2966)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/875830710 var685 var2306)) ; Statement: specialinvoke $r5.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r9) 

(declare-const var685!1 var3853)
(declare-const var2306!1 String)
 ; Statement: throw $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {getSort/-803576920=([jdk.internal.org.objectweb.asm.Type], int), var3853-init=([], java.lang.IllegalArgumentException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var1079-to-var904=([jdk.internal.org.objectweb.asm.Type], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var1016=jdk.internal.org.objectweb.asm.commons.GeneratorAdapter, var3426=r1, var1079=jdk.internal.org.objectweb.asm.Type, var1002=r0, var3242=i1, var3167=jdk.internal.org.objectweb.asm.Label, var3915=r2, var2187=$i0, var3853=java.lang.IllegalArgumentException, var685=$r5, var1227=$r6, var3752=$r7, var904=java.lang.Object, var2966=$r8, var2306=$r9}
; {jdk.internal.org.objectweb.asm.commons.GeneratorAdapter=var1016, r1=var3426, jdk.internal.org.objectweb.asm.Type=var1079, r0=var1002, i1=var3242, jdk.internal.org.objectweb.asm.Label=var3167, r2=var3915, $i0=var2187, java.lang.IllegalArgumentException=var3853, $r5=var685, $r6=var1227, $r7=var3752, java.lang.Object=var904, $r8=var2966, $r9=var2306}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: jdk.internal.org.objectweb.asm.commons.GeneratorAdapter;	r0 := @parameter0: jdk.internal.org.objectweb.asm.Type;	i1 := @parameter1: int;	r2 := @parameter2: jdk.internal.org.objectweb.asm.Label;	$i0 = virtualinvoke r0.<jdk.internal.org.objectweb.asm.Type: int getSort()>();	tableswitch($i0) {     case 6: goto $r12 = r1.<jdk.internal.org.objectweb.asm.commons.GeneratorAdapter: jdk.internal.org.objectweb.asm.MethodVisitor mv>;     case 7: goto $r11 = r1.<jdk.internal.org.objectweb.asm.commons.GeneratorAdapter: jdk.internal.org.objectweb.asm.MethodVisitor mv>;     case 8: goto $r10 = r1.<jdk.internal.org.objectweb.asm.commons.GeneratorAdapter: jdk.internal.org.objectweb.asm.MethodVisitor mv>;     case 9: goto lookupswitch(i1) {     case 153: goto $r4 = r1.<jdk.internal.org.objectweb.asm.commons.GeneratorAdapter: jdk.internal.org.objectweb.asm.MethodVisitor mv>;     case 154: goto $r3 = r1.<jdk.internal.org.objectweb.asm.commons.GeneratorAdapter: jdk.internal.org.objectweb.asm.MethodVisitor mv>;     default: goto $r5 = new java.lang.IllegalArgumentException; };     case 10: goto lookupswitch(i1) {     case 153: goto $r4 = r1.<jdk.internal.org.objectweb.asm.commons.GeneratorAdapter: jdk.internal.org.objectweb.asm.MethodVisitor mv>;     case 154: goto $r3 = r1.<jdk.internal.org.objectweb.asm.commons.GeneratorAdapter: jdk.internal.org.objectweb.asm.MethodVisitor mv>;     default: goto $r5 = new java.lang.IllegalArgumentException; };     default: goto s4 = -1; };	lookupswitch(i1) {     case 153: goto $r4 = r1.<jdk.internal.org.objectweb.asm.commons.GeneratorAdapter: jdk.internal.org.objectweb.asm.MethodVisitor mv>;     case 154: goto $r3 = r1.<jdk.internal.org.objectweb.asm.commons.GeneratorAdapter: jdk.internal.org.objectweb.asm.MethodVisitor mv>;     default: goto $r5 = new java.lang.IllegalArgumentException; };	$r5 = new java.lang.IllegalArgumentException;	$r6 = new java.lang.StringBuilder;	specialinvoke $r6.<java.lang.StringBuilder: void <init>()>();	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Bad comparison for type ");	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r0);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r5.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r9);	throw $r5
;block_num 3