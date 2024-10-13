(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3030 0)
(declare-sort var1849 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3030_getStringValue/-609363705 (var3030) String)
(declare-fun toLowerCase/1946809429 (String var1849) String)
(declare-fun replaceAll/1692887130 (String String String) String)
(declare-fun Float64_parseDouble/1471110886 (String) Float64)
(define-fun endsWith/985337093 ((s String) (suffix String)) Bool (str.suffixof suffix s))
(declare-fun cast-from-Float64-to-Int (Float64) Int)
(declare-const null-var3030 var3030)
(declare-const null-Float64 Float64)
(declare-const var1849-ROOT var1849)
(declare-const var600 var3030) ; Statement: r0 := @parameter0: org.apache.xmlbeans.XmlAnySimpleType 
(assert (not (= var600 null-var3030)))
(declare-const var1215 Float64) ; Statement: d3 := @parameter1: double 
(assert (not (= var1215 null-Float64)))
(define-const var2584 String (var3030_getStringValue/-609363705 var600)) ; Statement: $r2 = interfaceinvoke r0.<org.apache.xmlbeans.XmlAnySimpleType: java.lang.String getStringValue()>() 
(define-const var3846 var1849 var1849-ROOT) ; Statement: $r1 = <java.util.Locale: java.util.Locale ROOT> 
(assert true)
(define-const var1465 String (toLowerCase/1946809429 var2584 var3846)) ; Statement: r3 = virtualinvoke $r2.<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>($r1) 
(assert true)
(define-const var1847 String (replaceAll/1692887130 var1465 "(mm|cm|in|pt|pc|pi)" "")) ; Statement: $r4 = virtualinvoke r3.<java.lang.String: java.lang.String replaceAll(java.lang.String,java.lang.String)>("(mm|cm|in|pt|pc|pi)", "") 
(assert (= (replaceAll/1692887130 var1465 "(mm|cm|in|pt|pc|pi)" "") (str.replace_re_all var1465 (re.union (str.to_re "mm") (str.to_re "cm") (str.to_re "in") (str.to_re "pt") (str.to_re "pc") (str.to_re "pi")) "")))
(define-const var1114 Float64 (Float64_parseDouble/1471110886 var1847)) ; Statement: d0 = staticinvoke <java.lang.Double: double parseDouble(java.lang.String)>($r4) 
(assert true)
(define-const var3258 Bool (endsWith/985337093 var1465 "mm")) ; Statement: $z0 = virtualinvoke r3.<java.lang.String: boolean endsWith(java.lang.String)>("mm") 
 ; Statement: if $z0 == 0 goto $z1 = virtualinvoke r3.<java.lang.String: boolean endsWith(java.lang.String)>("cm") 
(assert (not (= (ite var3258 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var3018 Float64 (fp.div roundNearestTiesToEven var1114 ((_ to_fp 11 53) #x4024000000000000))) ; Statement: $d9 = d0 / 10.0 
(define-const var2186 Float64 (fp.div roundNearestTiesToEven var3018 ((_ to_fp 11 53) #x400451eb80000000))) ; Statement: $d10 = $d9 / 2.5399999618530273 
(define-const var610 Float64 (fp.mul roundNearestTiesToEven var2186 ((_ to_fp 11 53) #x412be7c000000000))) ; Statement: $d11 = $d10 * 914400.0 
(define-const var1690 Int (cast-from-Float64-to-Int var610)) ; Statement: l0 = (long) $d11 
 ; Statement: goto [?= return l0] 
(assert true) ; Non Conditional
 ; Statement: return l0 
(check-sat)
(get-model)
(get-unsat-core)
; {var3030_getStringValue/-609363705=([org.apache.xmlbeans.XmlAnySimpleType], java.lang.String), toLowerCase/1946809429=([java.lang.String, java.util.Locale], java.lang.String), replaceAll/1692887130=([java.lang.String, java.lang.String, java.lang.String], java.lang.String), Float64_parseDouble/1471110886=([java.lang.String], double), endsWith/985337093=([java.lang.String, java.lang.String], boolean), cast-from-Float64-to-Int=([double], long)}
; {var3030=org.apache.xmlbeans.XmlAnySimpleType, var600=r0, var1215=d3, var2584=$r2, var1849=java.util.Locale, var3846=$r1, var1465=r3, var1847=$r4, var1114=d0, var3258=$z0, var3018=$d9, var2186=$d10, var610=$d11, var1690=l0}
; {org.apache.xmlbeans.XmlAnySimpleType=var3030, r0=var600, d3=var1215, $r2=var2584, java.util.Locale=var1849, $r1=var3846, r3=var1465, $r4=var1847, d0=var1114, $z0=var3258, $d9=var3018, $d10=var2186, $d11=var610, l0=var1690}
;seq <java.lang.String: java.lang.String toLowerCase(java.util.Locale)>;	<java.lang.String: java.lang.String replaceAll(java.lang.String,java.lang.String)>;	<java.lang.String: boolean endsWith(java.lang.String)>
;cnt {"<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>": 1,"<java.lang.String: java.lang.String replaceAll(java.lang.String,java.lang.String)>": 1,"<java.lang.String: boolean endsWith(java.lang.String)>": 1}
;stmts r0 := @parameter0: org.apache.xmlbeans.XmlAnySimpleType;	d3 := @parameter1: double;	$r2 = interfaceinvoke r0.<org.apache.xmlbeans.XmlAnySimpleType: java.lang.String getStringValue()>();	$r1 = <java.util.Locale: java.util.Locale ROOT>;	r3 = virtualinvoke $r2.<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>($r1);	$r4 = virtualinvoke r3.<java.lang.String: java.lang.String replaceAll(java.lang.String,java.lang.String)>("(mm|cm|in|pt|pc|pi)", "");	d0 = staticinvoke <java.lang.Double: double parseDouble(java.lang.String)>($r4);	$z0 = virtualinvoke r3.<java.lang.String: boolean endsWith(java.lang.String)>("mm");	if $z0 == 0 goto $z1 = virtualinvoke r3.<java.lang.String: boolean endsWith(java.lang.String)>("cm");	$d9 = d0 / 10.0;	$d10 = $d9 / 2.5399999618530273;	$d11 = $d10 * 914400.0;	l0 = (long) $d11;	goto [?= return l0];	return l0
;block_num 3