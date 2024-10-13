(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var428 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun getDescriptor/-605257498 (var428) String)
(define-fun substring/-1240304868 ((s String) (begin Int) (end Int)) String (str.substr s begin (- end begin)))
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-Int Int)
(declare-const null-var428 var428)
(declare-const var855 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var855 null-Int)))
(declare-const var3429 var428) ; Statement: r1 := @parameter1: jdk.nashorn.internal.codegen.types.Type 
(assert (not (= var3429 null-var428)))
(define-const var2345 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2345)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2345!1 String)
(assert (= var2345!1 ""))
(assert true)
(define-const var877 String (getDescriptor/-605257498 var3429)) ; Statement: $r2 = virtualinvoke r1.<jdk.nashorn.internal.codegen.types.Type: java.lang.String getDescriptor()>() 
(assert (not (and true (and (>= 0 0) (>= (str.len var877) 1) (>= 1 0)))))
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), getDescriptor/-605257498=([jdk.nashorn.internal.codegen.types.Type], java.lang.String), substring/-1240304868=([java.lang.String, int, int], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var855=i0, var428=jdk.nashorn.internal.codegen.types.Type, var3429=r1, var2345=$r0, var877=$r2, var895=$r3, var1693=$r4, var1632=$r5, var2775=$r6}
; {i0=var855, jdk.nashorn.internal.codegen.types.Type=var428, r1=var3429, $r0=var2345, $r2=var877, $r3=var895, $r4=var1693, $r5=var1632, $r6=var2775}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.String: java.lang.String substring(int,int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.String: java.lang.String substring(int,int)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts i0 := @parameter0: int;	r1 := @parameter1: jdk.nashorn.internal.codegen.types.Type;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke r1.<jdk.nashorn.internal.codegen.types.Type: java.lang.String getDescriptor()>();	$r3 = virtualinvoke $r2.<java.lang.String: java.lang.String substring(int,int)>(0, 1);	$r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	return $r6
;block_num 1