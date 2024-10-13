(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3365 0)
(declare-sort var912 0)
(declare-sort var1182 0)
(declare-sort var2085 0)
(declare-sort var495 0)
(declare-sort var632 0)
(declare-sort var75 0)
(declare-sort var29 0)
(declare-sort var3330 0)
(declare-sort var3907 0)
(declare-sort var3877 0)
(declare-sort var3426 0)
(declare-sort var2601 0)
(declare-sort var2336 0)
(declare-sort var1648 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3365_getStringProperty/-80189395 (var3365 var1182) var2085)
(declare-fun var2085_getValue/1633538672 (var2085) var495)
(declare-fun cast-from-var495-to-String (var495) String)
(declare-fun var632_isNullOrEmpty/-1369891347 (String) Bool)
(declare-fun split/-636890950 (String String) (Array Int String))
(declare-fun var29_stream/-1757820 ((Array Int var495)) var75)
(declare-fun cast-from-__Array__Int__String__-to-__Array__Int__var495__ ((Array Int String)) (Array Int var495))
(declare-fun getClass/1258963082 (var495) ClassObject)
(declare-fun cast-from-var912-to-var495 (var912) var495)
(declare-fun var3907_bootstrap$/-1723393277 (var912) var3330)
(declare-fun var75_filter/320182972 (var75 var3330) var75)
(declare-fun var3426_bootstrap$/-882343610 (var912) var3330)
(declare-fun var2601_bootstrap$/-1139311819 () var3330)
(declare-fun var1648_toList/714215649 () var2336)
(declare-fun var75_collect/-2050842585 (var75 var2336) var495)
(declare-fun cast-from-var495-to-var912 (var495) var912)
(declare-fun arr-String-init () (Array Int String))
(declare-fun var912_toArray/-775711681 (var912 (Array Int var495)) (Array Int var495))
(declare-fun cast-from-__Array__Int__var495__-to-__Array__Int__String__ ((Array Int var495)) (Array Int String))
(declare-const null-var3365 var3365)
(declare-const null-var912 var912)
(declare-const var1182-tlsCiphersuites var1182)
(declare-const var3877-ALLOWED_CIPHERS var912)
(declare-const var824 var3365) ; Statement: r0 := @parameter0: com.mysql.cj.conf.PropertySet 
(assert (not (= var824 null-var3365)))
(declare-const var3561 var912) ; Statement: r6 := @parameter1: java.util.List 
(assert (not (= var3561 null-var912)))
(define-const var2950 var1182 var1182-tlsCiphersuites) ; Statement: $r1 = <com.mysql.cj.conf.PropertyKey: com.mysql.cj.conf.PropertyKey tlsCiphersuites> 
(define-const var88 var2085 (var3365_getStringProperty/-80189395 var824 var2950)) ; Statement: $r2 = interfaceinvoke r0.<com.mysql.cj.conf.PropertySet: com.mysql.cj.conf.RuntimeProperty getStringProperty(com.mysql.cj.conf.PropertyKey)>($r1) 
(define-const var3719 var495 (var2085_getValue/1633538672 var88)) ; Statement: $r3 = interfaceinvoke $r2.<com.mysql.cj.conf.RuntimeProperty: java.lang.Object getValue()>() 
(define-const var453 String (cast-from-var495-to-String var3719)) ; Statement: r4 = (java.lang.String) $r3 
(define-const var2478 Bool (var632_isNullOrEmpty/-1369891347 var453)) ; Statement: $z0 = staticinvoke <com.mysql.cj.util.StringUtils: boolean isNullOrEmpty(java.lang.String)>(r4) 
 ; Statement: if $z0 == 0 goto $r5 = virtualinvoke r4.<java.lang.String: java.lang.String[] split(java.lang.String)>("\\s*,\\s*") 
(assert (= (ite var2478 1 0) 0)) ; Cond: $z0 == 0 
(assert true)
(define-const var972 (Array Int String) (split/-636890950 var453 "\u005cs*,\u005cs*")) ; Statement: $r5 = virtualinvoke r4.<java.lang.String: java.lang.String[] split(java.lang.String)>("\\s*,\\s*") 
(assert (forall ((i Int)) (not (str.in_re (select (split/-636890950 var453 "\u005cs*,\u005cs*") i) (re.++ (re.* re.all) (re.++ (re.* (re.union (str.to_re "\u{005c}u{0009}") (str.to_re "\u{005c}u{000a}") (str.to_re "\u{005c}u{000d}") (str.to_re " "))) (str.to_re ",") (re.* (re.union (str.to_re "\u{005c}u{0009}") (str.to_re "\u{005c}u{000a}") (str.to_re "\u{005c}u{000d}") (str.to_re " ")))) (re.* re.all))))))
(define-const var274 var75 (var29_stream/-1757820 (cast-from-__Array__Int__String__-to-__Array__Int__var495__ var972))) ; Statement: $r8 = staticinvoke <java.util.Arrays: java.util.stream.Stream stream(java.lang.Object[])>($r5) 
(assert true)
;(assert (getClass/1258963082 (cast-from-var912-to-var495 var3561))) ; Statement: virtualinvoke r6.<java.lang.Object: java.lang.Class getClass()>() 

(declare-const var3561!1 var912)
(define-const var3543 var3330 (var3907_bootstrap$/-1723393277 var3561!1)) ; Statement: $r7 = staticinvoke <com.mysql.cj.protocol.ExportControlled$contains__103: java.util.function.Predicate bootstrap$(java.util.List)>(r6) 
(define-const var3608 var75 (var75_filter/320182972 var274 var3543)) ; Statement: $r20 = interfaceinvoke $r8.<java.util.stream.Stream: java.util.stream.Stream filter(java.util.function.Predicate)>($r7) 
(assert true) ; Non Conditional
(define-const var3875 var912 var3877-ALLOWED_CIPHERS) ; Statement: $r9 = <com.mysql.cj.protocol.ExportControlled: java.util.List ALLOWED_CIPHERS> 
(assert true)
;(assert (getClass/1258963082 (cast-from-var912-to-var495 var3875))) ; Statement: virtualinvoke $r9.<java.lang.Object: java.lang.Class getClass()>() 

(declare-const var3875!1 var912)
(define-const var602 var3330 (var3426_bootstrap$/-882343610 var3875!1)) ; Statement: $r10 = staticinvoke <com.mysql.cj.protocol.ExportControlled$contains__106: java.util.function.Predicate bootstrap$(java.util.List)>($r9) 
(define-const var1546 var75 (var75_filter/320182972 var3608 var602)) ; Statement: $r12 = interfaceinvoke $r20.<java.util.stream.Stream: java.util.stream.Stream filter(java.util.function.Predicate)>($r10) 
(define-const var3816 var3330 var2601_bootstrap$/-1139311819) ; Statement: $r11 = staticinvoke <com.mysql.cj.protocol.ExportControlled$lambda_getAllowedCiphers_5__108: java.util.function.Predicate bootstrap$()>() 
(define-const var3130 var75 (var75_filter/320182972 var1546 var3816)) ; Statement: $r14 = interfaceinvoke $r12.<java.util.stream.Stream: java.util.stream.Stream filter(java.util.function.Predicate)>($r11) 
(define-const var2959 var2336 var1648_toList/714215649) ; Statement: $r13 = staticinvoke <java.util.stream.Collectors: java.util.stream.Collector toList()>() 
(define-const var2861 var495 (var75_collect/-2050842585 var3130 var2959)) ; Statement: $r15 = interfaceinvoke $r14.<java.util.stream.Stream: java.lang.Object collect(java.util.stream.Collector)>($r13) 
(define-const var2011 var912 (cast-from-var495-to-var912 var2861)) ; Statement: $r19 = (java.util.List) $r15 
(define-const var2976 (Array Int String) arr-String-init) ; Statement: $r16 = newarray (java.lang.String)[0] 
(define-const var167 (Array Int var495) (var912_toArray/-775711681 var2011 (cast-from-__Array__Int__String__-to-__Array__Int__var495__ var2976))) ; Statement: $r17 = interfaceinvoke $r19.<java.util.List: java.lang.Object[] toArray(java.lang.Object[])>($r16) 
(define-const var815 (Array Int String) (cast-from-__Array__Int__var495__-to-__Array__Int__String__ var167)) ; Statement: $r18 = (java.lang.String[]) $r17 
 ; Statement: return $r18 
(check-sat)
(get-model)
(get-unsat-core)
; {var3365_getStringProperty/-80189395=([com.mysql.cj.conf.PropertySet, com.mysql.cj.conf.PropertyKey], com.mysql.cj.conf.RuntimeProperty), var2085_getValue/1633538672=([com.mysql.cj.conf.RuntimeProperty], java.lang.Object), cast-from-var495-to-String=([java.lang.Object], java.lang.String), var632_isNullOrEmpty/-1369891347=([java.lang.String], boolean), split/-636890950=([java.lang.String, java.lang.String], java.lang.String[]), var29_stream/-1757820=([java.lang.Object[]], java.util.stream.Stream), cast-from-__Array__Int__String__-to-__Array__Int__var495__=([java.lang.String[]], java.lang.Object[]), getClass/1258963082=([java.lang.Object], java.lang.Class), cast-from-var912-to-var495=([java.util.List], java.lang.Object), var3907_bootstrap$/-1723393277=([java.util.List], java.util.function.Predicate), var75_filter/320182972=([java.util.stream.Stream, java.util.function.Predicate], java.util.stream.Stream), var3426_bootstrap$/-882343610=([java.util.List], java.util.function.Predicate), var2601_bootstrap$/-1139311819=([], java.util.function.Predicate), var1648_toList/714215649=([], java.util.stream.Collector), var75_collect/-2050842585=([java.util.stream.Stream, java.util.stream.Collector], java.lang.Object), cast-from-var495-to-var912=([java.lang.Object], java.util.List), arr-String-init=([], java.lang.String[]), var912_toArray/-775711681=([java.util.List, java.lang.Object[]], java.lang.Object[]), cast-from-__Array__Int__var495__-to-__Array__Int__String__=([java.lang.Object[]], java.lang.String[])}
; {var3365=com.mysql.cj.conf.PropertySet, var824=r0, var912=java.util.List, var3561=r6, var1182=com.mysql.cj.conf.PropertyKey, var2950=$r1, var2085=com.mysql.cj.conf.RuntimeProperty, var88=$r2, var495=java.lang.Object, var3719=$r3, var453=r4, var632=com.mysql.cj.util.StringUtils, var2478=$z0, var972=$r5, var75=java.util.stream.Stream, var29=java.util.Arrays, var274=$r8, var3330=java.util.function.Predicate, var3907=com.mysql.cj.protocol.ExportControlled$contains__103, var3543=$r7, var3608=$r20, var3877=com.mysql.cj.protocol.ExportControlled, var3875=$r9, var3426=com.mysql.cj.protocol.ExportControlled$contains__106, var602=$r10, var1546=$r12, var2601=com.mysql.cj.protocol.ExportControlled$lambda_getAllowedCiphers_5__108, var3816=$r11, var3130=$r14, var2336=java.util.stream.Collector, var1648=java.util.stream.Collectors, var2959=$r13, var2861=$r15, var2011=$r19, var2976=$r16, var167=$r17, var815=$r18}
; {com.mysql.cj.conf.PropertySet=var3365, r0=var824, java.util.List=var912, r6=var3561, com.mysql.cj.conf.PropertyKey=var1182, $r1=var2950, com.mysql.cj.conf.RuntimeProperty=var2085, $r2=var88, java.lang.Object=var495, $r3=var3719, r4=var453, com.mysql.cj.util.StringUtils=var632, $z0=var2478, $r5=var972, java.util.stream.Stream=var75, java.util.Arrays=var29, $r8=var274, java.util.function.Predicate=var3330, com.mysql.cj.protocol.ExportControlled$contains__103=var3907, $r7=var3543, $r20=var3608, com.mysql.cj.protocol.ExportControlled=var3877, $r9=var3875, com.mysql.cj.protocol.ExportControlled$contains__106=var3426, $r10=var602, $r12=var1546, com.mysql.cj.protocol.ExportControlled$lambda_getAllowedCiphers_5__108=var2601, $r11=var3816, $r14=var3130, java.util.stream.Collector=var2336, java.util.stream.Collectors=var1648, $r13=var2959, $r15=var2861, $r19=var2011, $r16=var2976, $r17=var167, $r18=var815}
;seq <java.lang.String: java.lang.String[] split(java.lang.String)>
;cnt {"<java.lang.String: java.lang.String[] split(java.lang.String)>": 1}
;stmts r0 := @parameter0: com.mysql.cj.conf.PropertySet;	r6 := @parameter1: java.util.List;	$r1 = <com.mysql.cj.conf.PropertyKey: com.mysql.cj.conf.PropertyKey tlsCiphersuites>;	$r2 = interfaceinvoke r0.<com.mysql.cj.conf.PropertySet: com.mysql.cj.conf.RuntimeProperty getStringProperty(com.mysql.cj.conf.PropertyKey)>($r1);	$r3 = interfaceinvoke $r2.<com.mysql.cj.conf.RuntimeProperty: java.lang.Object getValue()>();	r4 = (java.lang.String) $r3;	$z0 = staticinvoke <com.mysql.cj.util.StringUtils: boolean isNullOrEmpty(java.lang.String)>(r4);	if $z0 == 0 goto $r5 = virtualinvoke r4.<java.lang.String: java.lang.String[] split(java.lang.String)>("\\s*,\\s*");	$r5 = virtualinvoke r4.<java.lang.String: java.lang.String[] split(java.lang.String)>("\\s*,\\s*");	$r8 = staticinvoke <java.util.Arrays: java.util.stream.Stream stream(java.lang.Object[])>($r5);	virtualinvoke r6.<java.lang.Object: java.lang.Class getClass()>();	$r7 = staticinvoke <com.mysql.cj.protocol.ExportControlled$contains__103: java.util.function.Predicate bootstrap$(java.util.List)>(r6);	$r20 = interfaceinvoke $r8.<java.util.stream.Stream: java.util.stream.Stream filter(java.util.function.Predicate)>($r7);	$r9 = <com.mysql.cj.protocol.ExportControlled: java.util.List ALLOWED_CIPHERS>;	virtualinvoke $r9.<java.lang.Object: java.lang.Class getClass()>();	$r10 = staticinvoke <com.mysql.cj.protocol.ExportControlled$contains__106: java.util.function.Predicate bootstrap$(java.util.List)>($r9);	$r12 = interfaceinvoke $r20.<java.util.stream.Stream: java.util.stream.Stream filter(java.util.function.Predicate)>($r10);	$r11 = staticinvoke <com.mysql.cj.protocol.ExportControlled$lambda_getAllowedCiphers_5__108: java.util.function.Predicate bootstrap$()>();	$r14 = interfaceinvoke $r12.<java.util.stream.Stream: java.util.stream.Stream filter(java.util.function.Predicate)>($r11);	$r13 = staticinvoke <java.util.stream.Collectors: java.util.stream.Collector toList()>();	$r15 = interfaceinvoke $r14.<java.util.stream.Stream: java.lang.Object collect(java.util.stream.Collector)>($r13);	$r19 = (java.util.List) $r15;	$r16 = newarray (java.lang.String)[0];	$r17 = interfaceinvoke $r19.<java.util.List: java.lang.Object[] toArray(java.lang.Object[])>($r16);	$r18 = (java.lang.String[]) $r17;	return $r18
;block_num 3