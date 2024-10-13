(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var911 0)
(declare-sort var3745 0)
(declare-sort var54 0)
(declare-sort var3175 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun stream/764557185 (var911) var3745)
(declare-fun update/1845258903 (var3745) void)
(declare-fun getLineno/810902738 (var3745) Int)
(declare-fun getCharno/-125153616 (var3745) Int)
(declare-fun getRemainingJSDocLine/1560257298 (var911) String)
(define-fun is-whitespace ((char String)) Bool (< (str.to_code char) 33))
(define-fun-rec trim-left ((s String)) String (ite (= s "") "" (ite (is-whitespace (str.substr s 0 1)) (trim-left (str.substr s 1 (- (str.len s) 1))) s)))
(define-fun-rec trim-right ((s String)) String (ite (= s "") "" (ite (is-whitespace (str.substr s (- (str.len s) 1) 1)) (trim-right (str.substr s 0 (- (str.len s) 1))) s)))
(define-fun trim/-847153721 ((s String)) String (trim-right (trim-left s)))
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun var54-init () var54)
(declare-fun next/1107946956 (var911) var3175)
(declare-fun <init>/581773183 (var54 String var3175) void)
(declare-const null-var911 var911)
(declare-const var203 var911) ; Statement: r0 := @this: com.google.javascript.jscomp.parsing.JsDocInfoParser 
(assert (not (= var203 null-var911)))
(define-const var437 var3745 (stream/764557185 var203)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.parsing.JsDocInfoParser: com.google.javascript.jscomp.parsing.JsDocTokenStream stream> 
(assert true)
;(assert (update/1845258903 var437)) ; Statement: virtualinvoke $r1.<com.google.javascript.jscomp.parsing.JsDocTokenStream: void update()>() 

(declare-const var437!1 var3745)
(define-const var2207 var3745 (stream/764557185 var203)) ; Statement: $r2 = r0.<com.google.javascript.jscomp.parsing.JsDocInfoParser: com.google.javascript.jscomp.parsing.JsDocTokenStream stream> 
(assert true)
(define-const var1843 Int (getLineno/810902738 var2207)) ; Statement: i0 = virtualinvoke $r2.<com.google.javascript.jscomp.parsing.JsDocTokenStream: int getLineno()>() 
(define-const var3418 var3745 (stream/764557185 var203)) ; Statement: $r3 = r0.<com.google.javascript.jscomp.parsing.JsDocInfoParser: com.google.javascript.jscomp.parsing.JsDocTokenStream stream> 
(assert true)
(define-const var3071 Int (getCharno/-125153616 var3418)) ; Statement: $i1 = virtualinvoke $r3.<com.google.javascript.jscomp.parsing.JsDocTokenStream: int getCharno()>() 
(define-const var384 Int (+ var3071 1)) ; Statement: i2 = $i1 + 1 
(assert true)
(define-const var560 String (getRemainingJSDocLine/1560257298 var203)) ; Statement: $r4 = virtualinvoke r0.<com.google.javascript.jscomp.parsing.JsDocInfoParser: java.lang.String getRemainingJSDocLine()>() 
(assert true)
(define-const var3412 String (trim/-847153721 var560)) ; Statement: r5 = virtualinvoke $r4.<java.lang.String: java.lang.String trim()>() 
(assert true)
(define-const var3291 Int (length/-134980193 var3412)) ; Statement: $i3 = virtualinvoke r5.<java.lang.String: int length()>() 
 ; Statement: if $i3 <= 0 goto $r6 = new com.google.javascript.jscomp.parsing.JsDocInfoParser$ExtractionInfo 
(assert (<= var3291 0)) ; Cond: $i3 <= 0 
(define-const var3835 var54 var54-init) ; Statement: $r6 = new com.google.javascript.jscomp.parsing.JsDocInfoParser$ExtractionInfo 
(assert true)
(define-const var1336 var3175 (next/1107946956 var203)) ; Statement: $r7 = virtualinvoke r0.<com.google.javascript.jscomp.parsing.JsDocInfoParser: com.google.javascript.jscomp.parsing.JsDocToken next()>() 
(assert true)
;(assert (<init>/581773183 var3835 var3412 var1336)) ; Statement: specialinvoke $r6.<com.google.javascript.jscomp.parsing.JsDocInfoParser$ExtractionInfo: void <init>(java.lang.String,com.google.javascript.jscomp.parsing.JsDocToken)>(r5, $r7) 

(declare-const var3835!1 var54)
(declare-const var3412!1 String)
(declare-const var1336!1 var3175)
 ; Statement: return $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {stream/764557185=([com.google.javascript.jscomp.parsing.JsDocInfoParser], com.google.javascript.jscomp.parsing.JsDocTokenStream), update/1845258903=([com.google.javascript.jscomp.parsing.JsDocTokenStream], void), getLineno/810902738=([com.google.javascript.jscomp.parsing.JsDocTokenStream], int), getCharno/-125153616=([com.google.javascript.jscomp.parsing.JsDocTokenStream], int), getRemainingJSDocLine/1560257298=([com.google.javascript.jscomp.parsing.JsDocInfoParser], java.lang.String), trim/-847153721=([java.lang.String], java.lang.String), length/-134980193=([java.lang.String], int), var54-init=([], com.google.javascript.jscomp.parsing.JsDocInfoParser$ExtractionInfo), next/1107946956=([com.google.javascript.jscomp.parsing.JsDocInfoParser], com.google.javascript.jscomp.parsing.JsDocToken), <init>/581773183=([com.google.javascript.jscomp.parsing.JsDocInfoParser$ExtractionInfo, java.lang.String, com.google.javascript.jscomp.parsing.JsDocToken], void)}
; {var911=com.google.javascript.jscomp.parsing.JsDocInfoParser, var203=r0, var3745=com.google.javascript.jscomp.parsing.JsDocTokenStream, var437=$r1, var2207=$r2, var1843=i0, var3418=$r3, var3071=$i1, var384=i2, var560=$r4, var3412=r5, var3291=$i3, var54=com.google.javascript.jscomp.parsing.JsDocInfoParser$ExtractionInfo, var3835=$r6, var3175=com.google.javascript.jscomp.parsing.JsDocToken, var1336=$r7}
; {com.google.javascript.jscomp.parsing.JsDocInfoParser=var911, r0=var203, com.google.javascript.jscomp.parsing.JsDocTokenStream=var3745, $r1=var437, $r2=var2207, i0=var1843, $r3=var3418, $i1=var3071, i2=var384, $r4=var560, r5=var3412, $i3=var3291, com.google.javascript.jscomp.parsing.JsDocInfoParser$ExtractionInfo=var54, $r6=var3835, com.google.javascript.jscomp.parsing.JsDocToken=var3175, $r7=var1336}
;seq <java.lang.String: java.lang.String trim()>;	<java.lang.String: int length()>
;cnt {"<java.lang.String: java.lang.String trim()>": 1,"<java.lang.String: int length()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.parsing.JsDocInfoParser;	$r1 = r0.<com.google.javascript.jscomp.parsing.JsDocInfoParser: com.google.javascript.jscomp.parsing.JsDocTokenStream stream>;	virtualinvoke $r1.<com.google.javascript.jscomp.parsing.JsDocTokenStream: void update()>();	$r2 = r0.<com.google.javascript.jscomp.parsing.JsDocInfoParser: com.google.javascript.jscomp.parsing.JsDocTokenStream stream>;	i0 = virtualinvoke $r2.<com.google.javascript.jscomp.parsing.JsDocTokenStream: int getLineno()>();	$r3 = r0.<com.google.javascript.jscomp.parsing.JsDocInfoParser: com.google.javascript.jscomp.parsing.JsDocTokenStream stream>;	$i1 = virtualinvoke $r3.<com.google.javascript.jscomp.parsing.JsDocTokenStream: int getCharno()>();	i2 = $i1 + 1;	$r4 = virtualinvoke r0.<com.google.javascript.jscomp.parsing.JsDocInfoParser: java.lang.String getRemainingJSDocLine()>();	r5 = virtualinvoke $r4.<java.lang.String: java.lang.String trim()>();	$i3 = virtualinvoke r5.<java.lang.String: int length()>();	if $i3 <= 0 goto $r6 = new com.google.javascript.jscomp.parsing.JsDocInfoParser$ExtractionInfo;	$r6 = new com.google.javascript.jscomp.parsing.JsDocInfoParser$ExtractionInfo;	$r7 = virtualinvoke r0.<com.google.javascript.jscomp.parsing.JsDocInfoParser: com.google.javascript.jscomp.parsing.JsDocToken next()>();	specialinvoke $r6.<com.google.javascript.jscomp.parsing.JsDocInfoParser$ExtractionInfo: void <init>(java.lang.String,com.google.javascript.jscomp.parsing.JsDocToken)>(r5, $r7);	return $r6
;block_num 2