(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var476 0)
(declare-sort var3321 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(declare-fun var3321_getBeginning/-726516430 (var3321) String)
(define-fun <init>/-1061048412 ((s String)) String s)
(declare-fun Iterator_hasNext/-1669924200 (Iterator) Bool)
(declare-fun var3321_getEnding/-1280460220 (var3321) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-Iterator Iterator)
(declare-const null-var476 var476)
(declare-const null-var3321 var3321)
(declare-const var919 Iterator) ; Statement: r3 := @parameter0: java.util.Iterator 
(assert (not (= var919 null-Iterator)))
(declare-const var3783 var476) ; Statement: r9 := @parameter1: org.hibernate.dialect.function.DerbyConcatFunction$StringTransformer 
(assert (not (= var3783 null-var476)))
(declare-const var2331 var3321) ; Statement: r1 := @parameter2: org.hibernate.dialect.function.DerbyConcatFunction$StringJoinTemplate 
(assert (not (= var2331 null-var3321)))
(define-const var3657 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(define-const var5 String (var3321_getBeginning/-726516430 var2331)) ; Statement: $r2 = interfaceinvoke r1.<org.hibernate.dialect.function.DerbyConcatFunction$StringJoinTemplate: java.lang.String getBeginning()>() 
(assert true)
;(assert (<init>/-1061048412 var3657 var5)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>(java.lang.String)>($r2) 
(declare-const var3657!1 String)
(assert (= var3657!1 var5))
(assert true) ; Non Conditional
(define-const var310 Bool (Iterator_hasNext/-1669924200 var919)) ; Statement: $z0 = interfaceinvoke r3.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z0 == 0 goto $r4 = interfaceinvoke r1.<org.hibernate.dialect.function.DerbyConcatFunction$StringJoinTemplate: java.lang.String getEnding()>() 
(assert (= (ite var310 1 0) 0)) ; Cond: $z0 == 0 
(define-const var107 String (var3321_getEnding/-1280460220 var2331)) ; Statement: $r4 = interfaceinvoke r1.<org.hibernate.dialect.function.DerbyConcatFunction$StringJoinTemplate: java.lang.String getEnding()>() 
(assert true)
(define-const var3673 String (append/672562846 var3657!1 var107)) ; Statement: $r5 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4) 
(declare-const var3657!2 String)
(assert (= var3657!2 (str.++ var3657!1 var107)))
(assert true)
(define-const var3653 String (toString/-2075883882 var3673)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), var3321_getBeginning/-726516430=([org.hibernate.dialect.function.DerbyConcatFunction$StringJoinTemplate], java.lang.String), <init>/-1061048412=([java.lang.StringBuilder, java.lang.String], void), Iterator_hasNext/-1669924200=([java.util.Iterator], boolean), var3321_getEnding/-1280460220=([org.hibernate.dialect.function.DerbyConcatFunction$StringJoinTemplate], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var919=r3, var476=org.hibernate.dialect.function.DerbyConcatFunction$StringTransformer, var3783=r9, var3321=org.hibernate.dialect.function.DerbyConcatFunction$StringJoinTemplate, var2331=r1, var3657=$r0, var5=$r2, var310=$z0, var107=$r4, var3673=$r5, var3653=$r6}
; {r3=var919, org.hibernate.dialect.function.DerbyConcatFunction$StringTransformer=var476, r9=var3783, org.hibernate.dialect.function.DerbyConcatFunction$StringJoinTemplate=var3321, r1=var2331, $r0=var3657, $r2=var5, $z0=var310, $r4=var107, $r5=var3673, $r6=var3653}
;seq <java.lang.StringBuilder: void <init>(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r3 := @parameter0: java.util.Iterator;	r9 := @parameter1: org.hibernate.dialect.function.DerbyConcatFunction$StringTransformer;	r1 := @parameter2: org.hibernate.dialect.function.DerbyConcatFunction$StringJoinTemplate;	$r0 = new java.lang.StringBuilder;	$r2 = interfaceinvoke r1.<org.hibernate.dialect.function.DerbyConcatFunction$StringJoinTemplate: java.lang.String getBeginning()>();	specialinvoke $r0.<java.lang.StringBuilder: void <init>(java.lang.String)>($r2);	$z0 = interfaceinvoke r3.<java.util.Iterator: boolean hasNext()>();	if $z0 == 0 goto $r4 = interfaceinvoke r1.<org.hibernate.dialect.function.DerbyConcatFunction$StringJoinTemplate: java.lang.String getEnding()>();	$r4 = interfaceinvoke r1.<org.hibernate.dialect.function.DerbyConcatFunction$StringJoinTemplate: java.lang.String getEnding()>();	$r5 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	return $r6
;block_num 3