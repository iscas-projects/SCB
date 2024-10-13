(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1357 0)
(declare-sort var1783 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun split/-636890950 (String String) (Array Int String))
(declare-fun toUpperCase/398655892 (String var1783) String)
(declare-const null-String String)
(declare-const var1783-ENGLISH var1783)
(declare-const var3890 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var3890 null-String)))
(assert true)
(define-const var2166 (Array Int String) (split/-636890950 var3890 "\u005c.")) ; Statement: r1 = virtualinvoke r0.<java.lang.String: java.lang.String[] split(java.lang.String)>("\\.") 
(assert (forall ((i Int)) (not (str.in_re (select (split/-636890950 var3890 "\u005c.") i) (re.++ (re.* re.all) (str.to_re ".") (re.* re.all))))))
(define-const var3687 String (select var2166 0)) ; Statement: $r3 = r1[0] 
(define-const var3607 var1783 var1783-ENGLISH) ; Statement: $r2 = <java.util.Locale: java.util.Locale ENGLISH> 
(assert true)
(define-const var3568 String (toUpperCase/398655892 var3687 var3607)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.String: java.lang.String toUpperCase(java.util.Locale)>($r2) 
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {split/-636890950=([java.lang.String, java.lang.String], java.lang.String[]), toUpperCase/398655892=([java.lang.String, java.util.Locale], java.lang.String)}
; {var3890=r0, var1357=null_type, var2166=r1, var3687=$r3, var1783=java.util.Locale, var3607=$r2, var3568=$r4}
; {r0=var3890, null_type=var1357, r1=var2166, $r3=var3687, java.util.Locale=var1783, $r2=var3607, $r4=var3568}
;seq <java.lang.String: java.lang.String[] split(java.lang.String)>;	<java.lang.String: java.lang.String toUpperCase(java.util.Locale)>
;cnt {"<java.lang.String: java.lang.String[] split(java.lang.String)>": 1,"<java.lang.String: java.lang.String toUpperCase(java.util.Locale)>": 1}
;stmts r0 := @parameter0: java.lang.String;	r1 = virtualinvoke r0.<java.lang.String: java.lang.String[] split(java.lang.String)>("\\.");	$r3 = r1[0];	$r2 = <java.util.Locale: java.util.Locale ENGLISH>;	$r4 = virtualinvoke $r3.<java.lang.String: java.lang.String toUpperCase(java.util.Locale)>($r2);	return $r4
;block_num 1