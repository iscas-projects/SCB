(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3358 0)
(declare-sort var896 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun getName/128190120 (var896) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getName/-2047423258 (var3358) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3358 var3358)
(declare-const null-var896 var896)
(declare-const var1543 var3358) ; Statement: r3 := @this: org.junit.runners.parameterized.BlockJUnit4ClassRunnerWithParameters 
(assert (not (= var1543 null-var3358)))
(declare-const var2006 var896) ; Statement: r1 := @parameter0: org.junit.runners.model.FrameworkMethod 
(assert (not (= var2006 null-var896)))
(define-const var3713 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3713)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3713!1 String)
(assert (= var3713!1 ""))
(assert true)
(define-const var1171 String (getName/128190120 var2006)) ; Statement: $r2 = virtualinvoke r1.<org.junit.runners.model.FrameworkMethod: java.lang.String getName()>() 
(assert true)
(define-const var3040 String (append/672562846 var3713!1 var1171)) ; Statement: $r5 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var3713!2 String)
(assert (= var3713!2 (str.++ var3713!1 var1171)))
(assert true)
(define-const var518 String (getName/-2047423258 var1543)) ; Statement: $r4 = virtualinvoke r3.<org.junit.runners.parameterized.BlockJUnit4ClassRunnerWithParameters: java.lang.String getName()>() 
(assert true)
(define-const var2500 String (append/672562846 var3040 var518)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4) 
(declare-const var3040!1 String)
(assert (= var3040!1 (str.++ var3040 var518)))
(assert true)
(define-const var3929 String (toString/-2075883882 var2500)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), getName/128190120=([org.junit.runners.model.FrameworkMethod], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getName/-2047423258=([org.junit.runners.parameterized.BlockJUnit4ClassRunnerWithParameters], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3358=org.junit.runners.parameterized.BlockJUnit4ClassRunnerWithParameters, var1543=r3, var896=org.junit.runners.model.FrameworkMethod, var2006=r1, var3713=$r0, var1171=$r2, var3040=$r5, var518=$r4, var2500=$r6, var3929=$r7}
; {org.junit.runners.parameterized.BlockJUnit4ClassRunnerWithParameters=var3358, r3=var1543, org.junit.runners.model.FrameworkMethod=var896, r1=var2006, $r0=var3713, $r2=var1171, $r5=var3040, $r4=var518, $r6=var2500, $r7=var3929}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r3 := @this: org.junit.runners.parameterized.BlockJUnit4ClassRunnerWithParameters;	r1 := @parameter0: org.junit.runners.model.FrameworkMethod;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke r1.<org.junit.runners.model.FrameworkMethod: java.lang.String getName()>();	$r5 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	$r4 = virtualinvoke r3.<org.junit.runners.parameterized.BlockJUnit4ClassRunnerWithParameters: java.lang.String getName()>();	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	return $r7
;block_num 1