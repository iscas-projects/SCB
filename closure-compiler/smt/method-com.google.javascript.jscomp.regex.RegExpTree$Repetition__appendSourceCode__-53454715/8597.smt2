(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1138 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun length/-171891354 (String) Int)
(declare-fun appendBodySourceCode/576806983 (var1138 String) void)
(declare-fun min/1433046282 (var1138) Int)
(declare-fun max/1433046282 (var1138) Int)
(declare-fun append/-1166366385 (String Int) String)
(declare-fun greedy/1433046282 (var1138) Bool)
(declare-const null-var1138 var1138)
(declare-const null-String String)
(declare-const var3345 var1138) ; Statement: r1 := @this: com.google.javascript.jscomp.regex.RegExpTree$Repetition 
(assert (not (= var3345 null-var1138)))
(declare-const var3548 String) ; Statement: r0 := @parameter0: java.lang.StringBuilder 
(assert (not (= var3548 null-String)))
(assert true)
(define-const var2380 Int (length/-171891354 var3548)) ; Statement: i0 = virtualinvoke r0.<java.lang.StringBuilder: int length()>() 
(assert true)
;(assert (appendBodySourceCode/576806983 var3345 var3548)) ; Statement: virtualinvoke r1.<com.google.javascript.jscomp.regex.RegExpTree$Repetition: void appendBodySourceCode(java.lang.StringBuilder)>(r0) 

(declare-const var3345!1 var1138)
(declare-const var3548!1 String)
(assert true)
(define-const var1618 Int (length/-171891354 var3548!1)) ; Statement: i1 = virtualinvoke r0.<java.lang.StringBuilder: int length()>() 
(define-const var533 Int (- var1618 var2380)) ; Statement: i2 = i1 - i0 
(define-const var1641 Int (min/1433046282 var3345!1)) ; Statement: i10 = r1.<com.google.javascript.jscomp.regex.RegExpTree$Repetition: int min> 
(define-const var3754 Int (max/1433046282 var3345!1)) ; Statement: i11 = r1.<com.google.javascript.jscomp.regex.RegExpTree$Repetition: int max> 
 ; Statement: if i10 < 2 goto $i3 = i11 - i10 
(assert (< var1641 2)) ; Cond: i10 < 2 
(define-const var3418 Int (- var3754 var1641)) ; Statement: $i3 = i11 - i10 
 ; Statement: if $i3 > 1 goto (branch) 
(assert (> var3418 1)) ; Cond: $i3 > 1 
 ; Statement: if i11 != 2147483647 goto (branch) 
(assert (not (not (= var3754 2147483647)))) ; Negate: Cond: i11 != 2147483647  
 ; Statement: lookupswitch(i10) {     case 0: goto virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(42);     case 1: goto virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(43);     default: goto $r8 = virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(123); } 
(assert (and (= var1641 0) true)) ; Intersect: Cond: i10 == 0  and Non Conditional 
(assert true)
;(assert (append/-1166366385 var3548!1 42)) ; Statement: virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(42) 
(declare-const var3548!2 String)
(assert (str.prefixof var3548!1 var3548!2))
 ; Statement: goto [?= $z1 = r1.<com.google.javascript.jscomp.regex.RegExpTree$Repetition: boolean greedy>] 
(assert true) ; Non Conditional
(define-const var315 Bool (greedy/1433046282 var3345!1)) ; Statement: $z1 = r1.<com.google.javascript.jscomp.regex.RegExpTree$Repetition: boolean greedy> 
 ; Statement: if $z1 != 0 goto return 
(assert (not (= (ite var315 1 0) 0))) ; Cond: $z1 != 0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {length/-171891354=([java.lang.StringBuilder], int), appendBodySourceCode/576806983=([com.google.javascript.jscomp.regex.RegExpTree$Repetition, java.lang.StringBuilder], void), min/1433046282=([com.google.javascript.jscomp.regex.RegExpTree$Repetition], int), max/1433046282=([com.google.javascript.jscomp.regex.RegExpTree$Repetition], int), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), greedy/1433046282=([com.google.javascript.jscomp.regex.RegExpTree$Repetition], boolean)}
; {var1138=com.google.javascript.jscomp.regex.RegExpTree$Repetition, var3345=r1, var3548=r0, var2380=i0, var1618=i1, var533=i2, var1641=i10, var3754=i11, var3418=$i3, var315=$z1}
; {com.google.javascript.jscomp.regex.RegExpTree$Repetition=var1138, r1=var3345, r0=var3548, i0=var2380, i1=var1618, i2=var533, i10=var1641, i11=var3754, $i3=var3418, $z1=var315}
;seq <java.lang.StringBuilder: int length()>;	<java.lang.StringBuilder: int length()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>
;cnt {"<java.lang.StringBuilder: int length()>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.regex.RegExpTree$Repetition;	r0 := @parameter0: java.lang.StringBuilder;	i0 = virtualinvoke r0.<java.lang.StringBuilder: int length()>();	virtualinvoke r1.<com.google.javascript.jscomp.regex.RegExpTree$Repetition: void appendBodySourceCode(java.lang.StringBuilder)>(r0);	i1 = virtualinvoke r0.<java.lang.StringBuilder: int length()>();	i2 = i1 - i0;	i10 = r1.<com.google.javascript.jscomp.regex.RegExpTree$Repetition: int min>;	i11 = r1.<com.google.javascript.jscomp.regex.RegExpTree$Repetition: int max>;	if i10 < 2 goto $i3 = i11 - i10;	$i3 = i11 - i10;	if $i3 > 1 goto (branch);	if i11 != 2147483647 goto (branch);	lookupswitch(i10) {     case 0: goto virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(42);     case 1: goto virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(43);     default: goto $r8 = virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(123); };	virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(42);	goto [?= $z1 = r1.<com.google.javascript.jscomp.regex.RegExpTree$Repetition: boolean greedy>];	$z1 = r1.<com.google.javascript.jscomp.regex.RegExpTree$Repetition: boolean greedy>;	if $z1 != 0 goto return;	return
;block_num 7