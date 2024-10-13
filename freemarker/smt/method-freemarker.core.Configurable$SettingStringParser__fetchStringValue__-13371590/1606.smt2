(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3316 0)
(declare-sort var181 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun fetchWord/-91357450 (var3316) String)
(define-fun startsWith/-1785782452 ((s String) (prefix String)) Bool (str.prefixof prefix s))
(define-fun length/-134980193 ((s String)) Int (str.len s))
(define-fun substring/-1240304868 ((s String) (begin Int) (end Int)) String (str.substr s begin (- end begin)))
(declare-fun var181_FTLStringLiteralDec/1268033656 (String) String)
(declare-const null-var3316 var3316)
(declare-const var893 var3316) ; Statement: r0 := @this: freemarker.core.Configurable$SettingStringParser 
(assert (not (= var893 null-var3316)))
(assert true)
(define-const var285 String (fetchWord/-91357450 var893)) ; Statement: r1 = specialinvoke r0.<freemarker.core.Configurable$SettingStringParser: java.lang.String fetchWord()>() 
(assert true)
(define-const var60 Bool (startsWith/-1785782452 var285 "\u0027")) ; Statement: $z0 = virtualinvoke r1.<java.lang.String: boolean startsWith(java.lang.String)>("\'") 
 ; Statement: if $z0 != 0 goto $i0 = virtualinvoke r1.<java.lang.String: int length()>() 
(assert (not (= (ite var60 1 0) 0))) ; Cond: $z0 != 0 
(assert true)
(define-const var2491 Int (length/-134980193 var285)) ; Statement: $i0 = virtualinvoke r1.<java.lang.String: int length()>() 
(define-const var2830 Int (- var2491 1)) ; Statement: $i1 = $i0 - 1 
(assert (and true (and (>= 1 0) (>= (str.len var285) var2830) (>= var2830 1))))
(define-const var285!1 String (substring/-1240304868 var285 1 var2830)) ; Statement: r1 = virtualinvoke r1.<java.lang.String: java.lang.String substring(int,int)>(1, $i1) 
(assert true) ; Non Conditional
(define-const var3410 String (var181_FTLStringLiteralDec/1268033656 var285!1)) ; Statement: $r2 = staticinvoke <freemarker.template.utility.StringUtil: java.lang.String FTLStringLiteralDec(java.lang.String)>(r1) 
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {fetchWord/-91357450=([freemarker.core.Configurable$SettingStringParser], java.lang.String), startsWith/-1785782452=([java.lang.String, java.lang.String], boolean), length/-134980193=([java.lang.String], int), substring/-1240304868=([java.lang.String, int, int], java.lang.String), var181_FTLStringLiteralDec/1268033656=([java.lang.String], java.lang.String)}
; {var3316=freemarker.core.Configurable$SettingStringParser, var893=r0, var285=r1, var60=$z0, var2491=$i0, var2830=$i1, var181=freemarker.template.utility.StringUtil, var3410=$r2}
; {freemarker.core.Configurable$SettingStringParser=var3316, r0=var893, r1=var285, $z0=var60, $i0=var2491, $i1=var2830, freemarker.template.utility.StringUtil=var181, $r2=var3410}
;seq <java.lang.String: boolean startsWith(java.lang.String)>;	<java.lang.String: int length()>;	<java.lang.String: java.lang.String substring(int,int)>
;cnt {"<java.lang.String: boolean startsWith(java.lang.String)>": 1,"<java.lang.String: int length()>": 1,"<java.lang.String: java.lang.String substring(int,int)>": 1}
;stmts r0 := @this: freemarker.core.Configurable$SettingStringParser;	r1 = specialinvoke r0.<freemarker.core.Configurable$SettingStringParser: java.lang.String fetchWord()>();	$z0 = virtualinvoke r1.<java.lang.String: boolean startsWith(java.lang.String)>("\'");	if $z0 != 0 goto $i0 = virtualinvoke r1.<java.lang.String: int length()>();	$i0 = virtualinvoke r1.<java.lang.String: int length()>();	$i1 = $i0 - 1;	r1 = virtualinvoke r1.<java.lang.String: java.lang.String substring(int,int)>(1, $i1);	$r2 = staticinvoke <freemarker.template.utility.StringUtil: java.lang.String FTLStringLiteralDec(java.lang.String)>(r1);	return $r2
;block_num 3