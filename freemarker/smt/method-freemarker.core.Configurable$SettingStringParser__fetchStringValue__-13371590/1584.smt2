(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1889 0)
(declare-sort var3148 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun fetchWord/-91357450 (var1889) String)
(define-fun startsWith/-1785782452 ((s String) (prefix String)) Bool (str.prefixof prefix s))
(declare-fun var3148_FTLStringLiteralDec/1268033656 (String) String)
(declare-const null-var1889 var1889)
(declare-const var625 var1889) ; Statement: r0 := @this: freemarker.core.Configurable$SettingStringParser 
(assert (not (= var625 null-var1889)))
(assert true)
(define-const var3918 String (fetchWord/-91357450 var625)) ; Statement: r1 = specialinvoke r0.<freemarker.core.Configurable$SettingStringParser: java.lang.String fetchWord()>() 
(assert true)
(define-const var196 Bool (startsWith/-1785782452 var3918 "\u0027")) ; Statement: $z0 = virtualinvoke r1.<java.lang.String: boolean startsWith(java.lang.String)>("\'") 
 ; Statement: if $z0 != 0 goto $i0 = virtualinvoke r1.<java.lang.String: int length()>() 
(assert (not (not (= (ite var196 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(assert true)
(define-const var3454 Bool (startsWith/-1785782452 var3918 "\u0022")) ; Statement: $z1 = virtualinvoke r1.<java.lang.String: boolean startsWith(java.lang.String)>("\"") 
 ; Statement: if $z1 == 0 goto $r2 = staticinvoke <freemarker.template.utility.StringUtil: java.lang.String FTLStringLiteralDec(java.lang.String)>(r1) 
(assert (= (ite var3454 1 0) 0)) ; Cond: $z1 == 0 
(define-const var57 String (var3148_FTLStringLiteralDec/1268033656 var3918)) ; Statement: $r2 = staticinvoke <freemarker.template.utility.StringUtil: java.lang.String FTLStringLiteralDec(java.lang.String)>(r1) 
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {fetchWord/-91357450=([freemarker.core.Configurable$SettingStringParser], java.lang.String), startsWith/-1785782452=([java.lang.String, java.lang.String], boolean), var3148_FTLStringLiteralDec/1268033656=([java.lang.String], java.lang.String)}
; {var1889=freemarker.core.Configurable$SettingStringParser, var625=r0, var3918=r1, var196=$z0, var3454=$z1, var3148=freemarker.template.utility.StringUtil, var57=$r2}
; {freemarker.core.Configurable$SettingStringParser=var1889, r0=var625, r1=var3918, $z0=var196, $z1=var3454, freemarker.template.utility.StringUtil=var3148, $r2=var57}
;seq <java.lang.String: boolean startsWith(java.lang.String)>;	<java.lang.String: boolean startsWith(java.lang.String)>
;cnt {"<java.lang.String: boolean startsWith(java.lang.String)>": 2}
;stmts r0 := @this: freemarker.core.Configurable$SettingStringParser;	r1 = specialinvoke r0.<freemarker.core.Configurable$SettingStringParser: java.lang.String fetchWord()>();	$z0 = virtualinvoke r1.<java.lang.String: boolean startsWith(java.lang.String)>("\'");	if $z0 != 0 goto $i0 = virtualinvoke r1.<java.lang.String: int length()>();	$z1 = virtualinvoke r1.<java.lang.String: boolean startsWith(java.lang.String)>("\"");	if $z1 == 0 goto $r2 = staticinvoke <freemarker.template.utility.StringUtil: java.lang.String FTLStringLiteralDec(java.lang.String)>(r1);	$r2 = staticinvoke <freemarker.template.utility.StringUtil: java.lang.String FTLStringLiteralDec(java.lang.String)>(r1);	return $r2
;block_num 3