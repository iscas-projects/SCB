(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1270 0)
(declare-sort var3521 0)
(declare-sort var2326 0)
(declare-sort var1262 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun value/508785874 (var1270) String)
(define-fun contains/1009244746 ((s String) (subs String)) Bool (str.contains s subs))
(define-fun cast-from-String-to-String ((arg String)) String arg)
(declare-fun var1262_parse/-5293339 (String) var2326)
(declare-fun var2326_iterator/-912451715 (var2326) Iterator)
(declare-fun Iterator_hasNext/-1669924200 (Iterator) Bool)
(declare-const null-var1270 var1270)
(declare-const null-var3521 var3521)
(declare-const var3396 var1270) ; Statement: r0 := @parameter0: com.google.javascript.jscomp.parsing.parser.trees.Comment 
(assert (not (= var3396 null-var1270)))
(declare-const var236 var3521) ; Statement: r9 := @parameter1: com.google.javascript.jscomp.deps.JsFileFullParser$FileInfo 
(assert (not (= var236 null-var3521)))
(define-const var1139 String (value/508785874 var3396)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.parsing.parser.trees.Comment: java.lang.String value> 
(assert true)
(define-const var3495 Bool (contains/1009244746 var1139 (cast-from-String-to-String "@fileoverview"))) ; Statement: z0 = virtualinvoke $r1.<java.lang.String: boolean contains(java.lang.CharSequence)>("@fileoverview") 
(define-const var1624 String (value/508785874 var3396)) ; Statement: $r2 = r0.<com.google.javascript.jscomp.parsing.parser.trees.Comment: java.lang.String value> 
(define-const var1632 var2326 (var1262_parse/-5293339 var1624)) ; Statement: $r3 = staticinvoke <com.google.javascript.jscomp.deps.JsFileFullParser$CommentAnnotation: java.util.List parse(java.lang.String)>($r2) 
(define-const var454 Iterator (var2326_iterator/-912451715 var1632)) ; Statement: r4 = interfaceinvoke $r3.<java.util.List: java.util.Iterator iterator()>() 
(assert true) ; Non Conditional
(define-const var2174 Bool (Iterator_hasNext/-1669924200 var454)) ; Statement: $z1 = interfaceinvoke r4.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z1 == 0 goto return 
(assert (= (ite var2174 1 0) 0)) ; Cond: $z1 == 0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {value/508785874=([com.google.javascript.jscomp.parsing.parser.trees.Comment], java.lang.String), contains/1009244746=([java.lang.String, java.lang.CharSequence], boolean), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), var1262_parse/-5293339=([java.lang.String], java.util.List), var2326_iterator/-912451715=([java.util.List], java.util.Iterator), Iterator_hasNext/-1669924200=([java.util.Iterator], boolean)}
; {var1270=com.google.javascript.jscomp.parsing.parser.trees.Comment, var3396=r0, var3521=com.google.javascript.jscomp.deps.JsFileFullParser$FileInfo, var236=r9, var1139=$r1, var3495=z0, var1624=$r2, var2326=java.util.List, var1262=com.google.javascript.jscomp.deps.JsFileFullParser$CommentAnnotation, var1632=$r3, var454=r4, var2174=$z1}
; {com.google.javascript.jscomp.parsing.parser.trees.Comment=var1270, r0=var3396, com.google.javascript.jscomp.deps.JsFileFullParser$FileInfo=var3521, r9=var236, $r1=var1139, z0=var3495, $r2=var1624, java.util.List=var2326, com.google.javascript.jscomp.deps.JsFileFullParser$CommentAnnotation=var1262, $r3=var1632, r4=var454, $z1=var2174}
;seq <java.lang.String: boolean contains(java.lang.CharSequence)>
;cnt {"<java.lang.String: boolean contains(java.lang.CharSequence)>": 1}
;stmts r0 := @parameter0: com.google.javascript.jscomp.parsing.parser.trees.Comment;	r9 := @parameter1: com.google.javascript.jscomp.deps.JsFileFullParser$FileInfo;	$r1 = r0.<com.google.javascript.jscomp.parsing.parser.trees.Comment: java.lang.String value>;	z0 = virtualinvoke $r1.<java.lang.String: boolean contains(java.lang.CharSequence)>("@fileoverview");	$r2 = r0.<com.google.javascript.jscomp.parsing.parser.trees.Comment: java.lang.String value>;	$r3 = staticinvoke <com.google.javascript.jscomp.deps.JsFileFullParser$CommentAnnotation: java.util.List parse(java.lang.String)>($r2);	r4 = interfaceinvoke $r3.<java.util.List: java.util.Iterator iterator()>();	$z1 = interfaceinvoke r4.<java.util.Iterator: boolean hasNext()>();	if $z1 == 0 goto return;	return
;block_num 3