(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var549 0)
(declare-sort var2082 0)
(declare-sort var813 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var2082) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var813_fail/1175601834 (String) void)
(declare-const null-String String)
(declare-const null-var2082 var2082)
(declare-const var2792 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var2792 null-String)))
(declare-const var3268 var2082) ; Statement: r3 := @parameter1: java.lang.Object 
(assert (not (= var3268 null-var2082)))
(define-const var1614 String "Values should be different. ") ; Statement: r10 = "Values should be different. " 
 ; Statement: if r0 == null goto $r1 = new java.lang.StringBuilder 
(assert (= var2792 null-String)) ; Cond: r0 == null 
(define-const var1371 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1371)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1371!1 String)
(assert (= var1371!1 ""))
(assert true)
(define-const var2302 String (append/672562846 var1371!1 var1614)) ; Statement: $r2 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r10) 
(declare-const var1371!2 String)
(assert (= var1371!2 (str.++ var1371!1 var1614)))
(assert true)
(define-const var670 String (append/672562846 var2302 "Actual: ")) ; Statement: $r4 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Actual: ") 
(declare-const var2302!1 String)
(assert (= var2302!1 (str.++ var2302 "Actual: ")))
(assert true)
(define-const var1049 String (append/-1031950772 var670 var3268)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r3) 
(declare-const var670!1 String)
(assert (str.prefixof var670 var670!1))
(assert true)
(define-const var3434 String (toString/-2075883882 var1049)) ; Statement: $r9 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
;(assert (var813_fail/1175601834 var3434)) ; Statement: staticinvoke <org.junit.Assert: void fail(java.lang.String)>($r9) 

(declare-const var3434!1 String)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var813_fail/1175601834=([java.lang.String], void)}
; {var2792=r0, var549=null_type, var2082=java.lang.Object, var3268=r3, var1614=r10, var1371=$r1, var2302=$r2, var670=$r4, var1049=$r5, var3434=$r9, var813=org.junit.Assert}
; {r0=var2792, null_type=var549, java.lang.Object=var2082, r3=var3268, r10=var1614, $r1=var1371, $r2=var2302, $r4=var670, $r5=var1049, $r9=var3434, org.junit.Assert=var813}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: java.lang.String;	r3 := @parameter1: java.lang.Object;	r10 = "Values should be different. ";	if r0 == null goto $r1 = new java.lang.StringBuilder;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r10);	$r4 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Actual: ");	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r3);	$r9 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	staticinvoke <org.junit.Assert: void fail(java.lang.String)>($r9);	return
;block_num 2