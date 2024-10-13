(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3271 0)
(declare-sort var246 0)
(declare-sort var2564 0)
(declare-sort var1126 0)
(declare-sort var3980 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun <init>/-1270213085 (var246) void)
(declare-fun cast-from-var3271-to-var246 (var3271) var246)
(declare-fun modCount/1688106425 (var3271) Int)
(declare-fun keySet/1688106425 (var3271) var2564)
(declare-fun entrySet/1688106425 (var3271) var2564)
(declare-fun values/1688106425 (var3271) var1126)
(declare-fun var3980-init () var3980)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/875830710 (var3980 String) void)
(declare-const null-var3271 var3271)
(declare-const null-Int Int)
(declare-const null-Float32 Float32)
(declare-const null-var2564 var2564)
(declare-const null-var1126 var1126)
(declare-const var2957 var3271) ; Statement: r0 := @this: freemarker.ext.util.IdentityHashMap 
(assert (not (= var2957 null-var3271)))
(declare-const var942 Int) ; Statement: i2 := @parameter0: int 
(assert (not (= var942 null-Int)))
(declare-const var1295 Float32) ; Statement: f0 := @parameter1: float 
(assert (not (= var1295 null-Float32)))
(assert true)
;(assert (<init>/-1270213085 (cast-from-var3271-to-var246 var2957))) ; Statement: specialinvoke r0.<java.util.AbstractMap: void <init>()>() 

(declare-const var2957!1 var3271)
(declare-const var2957!2 var3271)
(assert (not (= var2957!2 null-var3271)))
(assert (= (modCount/1688106425 var2957!2) 0)) ; Statement: r0.<freemarker.ext.util.IdentityHashMap: int modCount> = 0 
(declare-const var2957!3 var3271)
(assert (not (= var2957!3 null-var3271)))
(assert (= (keySet/1688106425 var2957!3) null-var2564)) ; Statement: r0.<freemarker.ext.util.IdentityHashMap: java.util.Set keySet> = null 
(declare-const var2957!4 var3271)
(assert (not (= var2957!4 null-var3271)))
(assert (= (entrySet/1688106425 var2957!4) null-var2564)) ; Statement: r0.<freemarker.ext.util.IdentityHashMap: java.util.Set entrySet> = null 
(declare-const var2957!5 var3271)
(assert (not (= var2957!5 null-var3271)))
(assert (= (values/1688106425 var2957!5) null-var1126)) ; Statement: r0.<freemarker.ext.util.IdentityHashMap: java.util.Collection values> = null 
 ; Statement: if i2 >= 0 goto $b0 = f0 cmpg 0.0F 
(assert (not (>= var942 0))) ; Negate: Cond: i2 >= 0  
(define-const var736 var3980 var3980-init) ; Statement: $r13 = new java.lang.IllegalArgumentException 
(define-const var1600 String String-init) ; Statement: $r12 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1600)) ; Statement: specialinvoke $r12.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1600!1 String)
(assert (= var1600!1 ""))
(assert true)
(define-const var3275 String (append/672562846 var1600!1 "Illegal Initial Capacity: ")) ; Statement: $r9 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Illegal Initial Capacity: ") 
(declare-const var1600!2 String)
(assert (= var1600!2 (str.++ var1600!1 "Illegal Initial Capacity: ")))
(assert true)
(define-const var2741 String (append/-1001720160 var3275 var942)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i2) 
(declare-const var3275!1 String)
(assert (str.prefixof var3275 var3275!1))
(assert true)
(define-const var966 String (toString/-2075883882 var2741)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/875830710 var736 var966)) ; Statement: specialinvoke $r13.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r11) 

(declare-const var736!1 var3980)
(declare-const var966!1 String)
 ; Statement: throw $r13 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/-1270213085=([java.util.AbstractMap], void), cast-from-var3271-to-var246=([freemarker.ext.util.IdentityHashMap], java.util.AbstractMap), modCount/1688106425=([freemarker.ext.util.IdentityHashMap], int), keySet/1688106425=([freemarker.ext.util.IdentityHashMap], java.util.Set), entrySet/1688106425=([freemarker.ext.util.IdentityHashMap], java.util.Set), values/1688106425=([freemarker.ext.util.IdentityHashMap], java.util.Collection), var3980-init=([], java.lang.IllegalArgumentException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var3271=freemarker.ext.util.IdentityHashMap, var2957=r0, var942=i2, var1295=f0, var246=java.util.AbstractMap, var2564=java.util.Set, var1126=java.util.Collection, var3980=java.lang.IllegalArgumentException, var736=$r13, var1600=$r12, var3275=$r9, var2741=$r10, var966=$r11}
; {freemarker.ext.util.IdentityHashMap=var3271, r0=var2957, i2=var942, f0=var1295, java.util.AbstractMap=var246, java.util.Set=var2564, java.util.Collection=var1126, java.lang.IllegalArgumentException=var3980, $r13=var736, $r12=var1600, $r9=var3275, $r10=var2741, $r11=var966}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: freemarker.ext.util.IdentityHashMap;	i2 := @parameter0: int;	f0 := @parameter1: float;	specialinvoke r0.<java.util.AbstractMap: void <init>()>();	r0.<freemarker.ext.util.IdentityHashMap: int modCount> = 0;	r0.<freemarker.ext.util.IdentityHashMap: java.util.Set keySet> = null;	r0.<freemarker.ext.util.IdentityHashMap: java.util.Set entrySet> = null;	r0.<freemarker.ext.util.IdentityHashMap: java.util.Collection values> = null;	if i2 >= 0 goto $b0 = f0 cmpg 0.0F;	$r13 = new java.lang.IllegalArgumentException;	$r12 = new java.lang.StringBuilder;	specialinvoke $r12.<java.lang.StringBuilder: void <init>()>();	$r9 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Illegal Initial Capacity: ");	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i2);	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r13.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r11);	throw $r13
;block_num 2