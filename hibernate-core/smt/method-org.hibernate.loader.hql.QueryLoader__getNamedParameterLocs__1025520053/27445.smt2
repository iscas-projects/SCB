(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1978 0)
(declare-sort var1081 0)
(declare-sort var2726 0)
(declare-sort var2458 0)
(declare-sort var3034 0)
(declare-sort var871 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun queryTranslator/-1424258821 (var1978) var2726)
(declare-fun getParameterTranslations/-1200946488 (var2726) var2458)
(declare-fun cast-from-var871-to-var3034 (var871) var3034)
(declare-fun var2458_getNamedParameterInformation/1985594371 (var2458 String) var871)
(declare-fun var3034_getSourceLocations/-269082519 (var3034) (Array Int Int))
(declare-const null-var1978 var1978)
(declare-const null-String String)
(declare-const null-var3034 var3034)
(declare-const var3845 var1978) ; Statement: r0 := @this: org.hibernate.loader.hql.QueryLoader 
(assert (not (= var3845 null-var1978)))
(declare-const var1565 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var1565 null-String)))
(define-const var515 var2726 (queryTranslator/-1424258821 var3845)) ; Statement: $r1 = r0.<org.hibernate.loader.hql.QueryLoader: org.hibernate.hql.internal.ast.QueryTranslatorImpl queryTranslator> 
(assert true)
(define-const var1629 var2458 (getParameterTranslations/-1200946488 var515)) ; Statement: $r3 = virtualinvoke $r1.<org.hibernate.hql.internal.ast.QueryTranslatorImpl: org.hibernate.hql.spi.ParameterTranslations getParameterTranslations()>() 
(define-const var3993 var3034 (cast-from-var871-to-var3034 (var2458_getNamedParameterInformation/1985594371 var1629 var1565))) ; Statement: r13 = interfaceinvoke $r3.<org.hibernate.hql.spi.ParameterTranslations: org.hibernate.hql.spi.NamedParameterInformation getNamedParameterInformation(java.lang.String)>(r2) 
 ; Statement: if r13 != null goto (branch) 
(assert (not (= var3993 null-var3034))) ; Cond: r13 != null 
 ; Statement: if r13 != null goto $r4 = interfaceinvoke r13.<org.hibernate.hql.spi.ParameterInformation: int[] getSourceLocations()>() 
(assert (not (= var3993 null-var3034))) ; Cond: r13 != null 
(define-const var1377 (Array Int Int) (var3034_getSourceLocations/-269082519 var3993)) ; Statement: $r4 = interfaceinvoke r13.<org.hibernate.hql.spi.ParameterInformation: int[] getSourceLocations()>() 
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {queryTranslator/-1424258821=([org.hibernate.loader.hql.QueryLoader], org.hibernate.hql.internal.ast.QueryTranslatorImpl), getParameterTranslations/-1200946488=([org.hibernate.hql.internal.ast.QueryTranslatorImpl], org.hibernate.hql.spi.ParameterTranslations), cast-from-var871-to-var3034=([org.hibernate.hql.spi.NamedParameterInformation], org.hibernate.hql.spi.ParameterInformation), var2458_getNamedParameterInformation/1985594371=([org.hibernate.hql.spi.ParameterTranslations, java.lang.String], org.hibernate.hql.spi.NamedParameterInformation), var3034_getSourceLocations/-269082519=([org.hibernate.hql.spi.ParameterInformation], int[])}
; {var1978=org.hibernate.loader.hql.QueryLoader, var3845=r0, var1565=r2, var1081=null_type, var2726=org.hibernate.hql.internal.ast.QueryTranslatorImpl, var515=$r1, var2458=org.hibernate.hql.spi.ParameterTranslations, var1629=$r3, var3034=org.hibernate.hql.spi.ParameterInformation, var871=org.hibernate.hql.spi.NamedParameterInformation, var3993=r13, var1377=$r4}
; {org.hibernate.loader.hql.QueryLoader=var1978, r0=var3845, r2=var1565, null_type=var1081, org.hibernate.hql.internal.ast.QueryTranslatorImpl=var2726, $r1=var515, org.hibernate.hql.spi.ParameterTranslations=var2458, $r3=var1629, org.hibernate.hql.spi.ParameterInformation=var3034, org.hibernate.hql.spi.NamedParameterInformation=var871, r13=var3993, $r4=var1377}
;seq 
;cnt {}
;stmts r0 := @this: org.hibernate.loader.hql.QueryLoader;	r2 := @parameter0: java.lang.String;	$r1 = r0.<org.hibernate.loader.hql.QueryLoader: org.hibernate.hql.internal.ast.QueryTranslatorImpl queryTranslator>;	$r3 = virtualinvoke $r1.<org.hibernate.hql.internal.ast.QueryTranslatorImpl: org.hibernate.hql.spi.ParameterTranslations getParameterTranslations()>();	r13 = interfaceinvoke $r3.<org.hibernate.hql.spi.ParameterTranslations: org.hibernate.hql.spi.NamedParameterInformation getNamedParameterInformation(java.lang.String)>(r2);	if r13 != null goto (branch);	if r13 != null goto $r4 = interfaceinvoke r13.<org.hibernate.hql.spi.ParameterInformation: int[] getSourceLocations()>();	$r4 = interfaceinvoke r13.<org.hibernate.hql.spi.ParameterInformation: int[] getSourceLocations()>();	return $r4
;block_num 3