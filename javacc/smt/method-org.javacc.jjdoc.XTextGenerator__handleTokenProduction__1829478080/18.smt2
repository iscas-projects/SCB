(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2146 0)
(declare-sort var828 0)
(declare-sort var609 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun respecs/1241016197 (var828) var609)
(declare-fun var609_iterator/-912451715 (var609) Iterator)
(declare-fun Iterator_hasNext/-1669924200 (Iterator) Bool)
(declare-const null-var2146 var2146)
(declare-const null-var828 var828)
(declare-const var3080 var2146) ; Statement: r15 := @this: org.javacc.jjdoc.XTextGenerator 
(assert (not (= var3080 null-var2146)))
(declare-const var1079 var828) ; Statement: r1 := @parameter0: org.javacc.parser.TokenProduction 
(assert (not (= var1079 null-var828)))
(define-const var3846 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3846)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3846!1 String)
(assert (= var3846!1 ""))
(define-const var3429 var609 (respecs/1241016197 var1079)) ; Statement: $r2 = r1.<org.javacc.parser.TokenProduction: java.util.List respecs> 
(define-const var2869 Iterator (var609_iterator/-912451715 var3429)) ; Statement: r3 = interfaceinvoke $r2.<java.util.List: java.util.Iterator iterator()>() 
(assert true) ; Non Conditional
(define-const var631 Bool (Iterator_hasNext/-1669924200 var2869)) ; Statement: $z0 = interfaceinvoke r3.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z0 == 0 goto return 
(assert (= (ite var631 1 0) 0)) ; Cond: $z0 == 0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), respecs/1241016197=([org.javacc.parser.TokenProduction], java.util.List), var609_iterator/-912451715=([java.util.List], java.util.Iterator), Iterator_hasNext/-1669924200=([java.util.Iterator], boolean)}
; {var2146=org.javacc.jjdoc.XTextGenerator, var3080=r15, var828=org.javacc.parser.TokenProduction, var1079=r1, var3846=$r0, var609=java.util.List, var3429=$r2, var2869=r3, var631=$z0}
; {org.javacc.jjdoc.XTextGenerator=var2146, r15=var3080, org.javacc.parser.TokenProduction=var828, r1=var1079, $r0=var3846, java.util.List=var609, $r2=var3429, r3=var2869, $z0=var631}
;seq <java.lang.StringBuilder: void <init>()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1}
;stmts r15 := @this: org.javacc.jjdoc.XTextGenerator;	r1 := @parameter0: org.javacc.parser.TokenProduction;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = r1.<org.javacc.parser.TokenProduction: java.util.List respecs>;	r3 = interfaceinvoke $r2.<java.util.List: java.util.Iterator iterator()>();	$z0 = interfaceinvoke r3.<java.util.Iterator: boolean hasNext()>();	if $z0 == 0 goto return;	return
;block_num 3