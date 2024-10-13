(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2694 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun length/-171891354 (String) Int)
(declare-fun appendBodySourceCode/576806983 (var2694 String) void)
(declare-fun min/1433046282 (var2694) Int)
(declare-fun max/1433046282 (var2694) Int)
(declare-fun append/-1166366385 (String Int) String)
(declare-fun greedy/1433046282 (var2694) Bool)
(declare-const null-var2694 var2694)
(declare-const null-String String)
(declare-const var2064 var2694) ; Statement: r1 := @this: com.google.javascript.jscomp.regex.RegExpTree$Repetition 
(assert (not (= var2064 null-var2694)))
(declare-const var2873 String) ; Statement: r0 := @parameter0: java.lang.StringBuilder 
(assert (not (= var2873 null-String)))
(assert true)
(define-const var1586 Int (length/-171891354 var2873)) ; Statement: i0 = virtualinvoke r0.<java.lang.StringBuilder: int length()>() 
(assert true)
;(assert (appendBodySourceCode/576806983 var2064 var2873)) ; Statement: virtualinvoke r1.<com.google.javascript.jscomp.regex.RegExpTree$Repetition: void appendBodySourceCode(java.lang.StringBuilder)>(r0) 

(declare-const var2064!1 var2694)
(declare-const var2873!1 String)
(assert true)
(define-const var1651 Int (length/-171891354 var2873!1)) ; Statement: i1 = virtualinvoke r0.<java.lang.StringBuilder: int length()>() 
(define-const var358 Int (- var1651 var1586)) ; Statement: i2 = i1 - i0 
(define-const var1888 Int (min/1433046282 var2064!1)) ; Statement: i10 = r1.<com.google.javascript.jscomp.regex.RegExpTree$Repetition: int min> 
(define-const var2664 Int (max/1433046282 var2064!1)) ; Statement: i11 = r1.<com.google.javascript.jscomp.regex.RegExpTree$Repetition: int max> 
 ; Statement: if i10 < 2 goto $i3 = i11 - i10 
(assert (< var1888 2)) ; Cond: i10 < 2 
(define-const var661 Int (- var2664 var1888)) ; Statement: $i3 = i11 - i10 
 ; Statement: if $i3 > 1 goto (branch) 
(assert (> var661 1)) ; Cond: $i3 > 1 
 ; Statement: if i11 != 2147483647 goto (branch) 
(assert (not (not (= var2664 2147483647)))) ; Negate: Cond: i11 != 2147483647  
 ; Statement: lookupswitch(i10) {     case 0: goto virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(42);     case 1: goto virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(43);     default: goto $r8 = virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(123); } 
(assert (and (= var1888 1) (and (not (= var1888 0)) true))) ; Intersect: Cond: i10 == 1  and Intersect: Negate: Cond: i10 == 0   and Non Conditional  
(assert true)
;(assert (append/-1166366385 var2873!1 43)) ; Statement: virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(43) 
(declare-const var2873!2 String)
(assert (str.prefixof var2873!1 var2873!2))
 ; Statement: goto [?= $z1 = r1.<com.google.javascript.jscomp.regex.RegExpTree$Repetition: boolean greedy>] 
(assert true) ; Non Conditional
(define-const var2001 Bool (greedy/1433046282 var2064!1)) ; Statement: $z1 = r1.<com.google.javascript.jscomp.regex.RegExpTree$Repetition: boolean greedy> 
 ; Statement: if $z1 != 0 goto return 
(assert (not (= (ite var2001 1 0) 0))) ; Cond: $z1 != 0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {length/-171891354=([java.lang.StringBuilder], int), appendBodySourceCode/576806983=([com.google.javascript.jscomp.regex.RegExpTree$Repetition, java.lang.StringBuilder], void), min/1433046282=([com.google.javascript.jscomp.regex.RegExpTree$Repetition], int), max/1433046282=([com.google.javascript.jscomp.regex.RegExpTree$Repetition], int), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), greedy/1433046282=([com.google.javascript.jscomp.regex.RegExpTree$Repetition], boolean)}
; {var2694=com.google.javascript.jscomp.regex.RegExpTree$Repetition, var2064=r1, var2873=r0, var1586=i0, var1651=i1, var358=i2, var1888=i10, var2664=i11, var661=$i3, var2001=$z1}
; {com.google.javascript.jscomp.regex.RegExpTree$Repetition=var2694, r1=var2064, r0=var2873, i0=var1586, i1=var1651, i2=var358, i10=var1888, i11=var2664, $i3=var661, $z1=var2001}
;seq <java.lang.StringBuilder: int length()>;	<java.lang.StringBuilder: int length()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>
;cnt {"<java.lang.StringBuilder: int length()>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.regex.RegExpTree$Repetition;	r0 := @parameter0: java.lang.StringBuilder;	i0 = virtualinvoke r0.<java.lang.StringBuilder: int length()>();	virtualinvoke r1.<com.google.javascript.jscomp.regex.RegExpTree$Repetition: void appendBodySourceCode(java.lang.StringBuilder)>(r0);	i1 = virtualinvoke r0.<java.lang.StringBuilder: int length()>();	i2 = i1 - i0;	i10 = r1.<com.google.javascript.jscomp.regex.RegExpTree$Repetition: int min>;	i11 = r1.<com.google.javascript.jscomp.regex.RegExpTree$Repetition: int max>;	if i10 < 2 goto $i3 = i11 - i10;	$i3 = i11 - i10;	if $i3 > 1 goto (branch);	if i11 != 2147483647 goto (branch);	lookupswitch(i10) {     case 0: goto virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(42);     case 1: goto virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(43);     default: goto $r8 = virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(123); };	virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(43);	goto [?= $z1 = r1.<com.google.javascript.jscomp.regex.RegExpTree$Repetition: boolean greedy>];	$z1 = r1.<com.google.javascript.jscomp.regex.RegExpTree$Repetition: boolean greedy>;	if $z1 != 0 goto return;	return
;block_num 7