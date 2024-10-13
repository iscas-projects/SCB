(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1056 0)
(declare-sort var494 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(declare-fun callable/-1537137970 (var1056) var494)
(declare-fun toString/-522406933 (var494) String)
(define-fun <init>/-1061048412 ((s String)) String s)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun boundThis/-1537137970 (var1056) var494)
(declare-fun append/-1031950772 (String var494) String)
(declare-fun boundArgs/-1537137970 (var1056) (Array Int var494))
(declare-fun getLength-Arr-var494-1 ((Array Int var494)) Int)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1056 var1056)
(declare-const var6 var1056) ; Statement: r1 := @this: jdk.nashorn.internal.runtime.linker.BoundCallable 
(assert (not (= var6 null-var1056)))
(define-const var323 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(define-const var2925 var494 (callable/-1537137970 var6)) ; Statement: $r2 = r1.<jdk.nashorn.internal.runtime.linker.BoundCallable: java.lang.Object callable> 
(assert true)
(define-const var3201 String (toString/-522406933 var2925)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.Object: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1061048412 var323 var3201)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>(java.lang.String)>($r3) 
(declare-const var323!1 String)
(assert (= var323!1 var3201))
(assert true)
(define-const var1182 String (append/672562846 var323!1 " on ")) ; Statement: $r5 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" on ") 
(declare-const var323!2 String)
(assert (= var323!2 (str.++ var323!1 " on ")))
(define-const var2758 var494 (boundThis/-1537137970 var6)) ; Statement: $r4 = r1.<jdk.nashorn.internal.runtime.linker.BoundCallable: java.lang.Object boundThis> 
(assert true)
(define-const var499 String (append/-1031950772 var1182 var2758)) ; Statement: r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r4) 
(declare-const var1182!1 String)
(assert (str.prefixof var1182 var1182!1))
(define-const var3284 (Array Int var494) (boundArgs/-1537137970 var6)) ; Statement: $r7 = r1.<jdk.nashorn.internal.runtime.linker.BoundCallable: java.lang.Object[] boundArgs> 
(define-const var636 Int (getLength-Arr-var494-1 var3284)) ; Statement: $i0 = lengthof $r7 
 ; Statement: if $i0 == 0 goto $r8 = virtualinvoke r6.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (= var636 0)) ; Cond: $i0 == 0 
(assert true)
(define-const var10 String (toString/-2075883882 var499)) ; Statement: $r8 = virtualinvoke r6.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), callable/-1537137970=([jdk.nashorn.internal.runtime.linker.BoundCallable], java.lang.Object), toString/-522406933=([java.lang.Object], java.lang.String), <init>/-1061048412=([java.lang.StringBuilder, java.lang.String], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), boundThis/-1537137970=([jdk.nashorn.internal.runtime.linker.BoundCallable], java.lang.Object), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), boundArgs/-1537137970=([jdk.nashorn.internal.runtime.linker.BoundCallable], java.lang.Object[]), getLength-Arr-var494-1=([java.lang.Object[]], int), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1056=jdk.nashorn.internal.runtime.linker.BoundCallable, var6=r1, var323=$r0, var494=java.lang.Object, var2925=$r2, var3201=$r3, var1182=$r5, var2758=$r4, var499=r6, var3284=$r7, var636=$i0, var10=$r8}
; {jdk.nashorn.internal.runtime.linker.BoundCallable=var1056, r1=var6, $r0=var323, java.lang.Object=var494, $r2=var2925, $r3=var3201, $r5=var1182, $r4=var2758, r6=var499, $r7=var3284, $i0=var636, $r8=var10}
;seq <java.lang.Object: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: jdk.nashorn.internal.runtime.linker.BoundCallable;	$r0 = new java.lang.StringBuilder;	$r2 = r1.<jdk.nashorn.internal.runtime.linker.BoundCallable: java.lang.Object callable>;	$r3 = virtualinvoke $r2.<java.lang.Object: java.lang.String toString()>();	specialinvoke $r0.<java.lang.StringBuilder: void <init>(java.lang.String)>($r3);	$r5 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" on ");	$r4 = r1.<jdk.nashorn.internal.runtime.linker.BoundCallable: java.lang.Object boundThis>;	r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r4);	$r7 = r1.<jdk.nashorn.internal.runtime.linker.BoundCallable: java.lang.Object[] boundArgs>;	$i0 = lengthof $r7;	if $i0 == 0 goto $r8 = virtualinvoke r6.<java.lang.StringBuilder: java.lang.String toString()>();	$r8 = virtualinvoke r6.<java.lang.StringBuilder: java.lang.String toString()>();	return $r8
;block_num 2