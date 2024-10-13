(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1155 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun length/-171891354 (String) Int)
(declare-fun appendBodySourceCode/576806983 (var1155 String) void)
(declare-fun min/1433046282 (var1155) Int)
(declare-fun max/1433046282 (var1155) Int)
(declare-fun append/-1166366385 (String Int) String)
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun greedy/1433046282 (var1155) Bool)
(declare-const null-var1155 var1155)
(declare-const null-String String)
(declare-const var83 var1155) ; Statement: r1 := @this: com.google.javascript.jscomp.regex.RegExpTree$Repetition 
(assert (not (= var83 null-var1155)))
(declare-const var3190 String) ; Statement: r0 := @parameter0: java.lang.StringBuilder 
(assert (not (= var3190 null-String)))
(assert true)
(define-const var3379 Int (length/-171891354 var3190)) ; Statement: i0 = virtualinvoke r0.<java.lang.StringBuilder: int length()>() 
(assert true)
;(assert (appendBodySourceCode/576806983 var83 var3190)) ; Statement: virtualinvoke r1.<com.google.javascript.jscomp.regex.RegExpTree$Repetition: void appendBodySourceCode(java.lang.StringBuilder)>(r0) 

(declare-const var83!1 var1155)
(declare-const var3190!1 String)
(assert true)
(define-const var377 Int (length/-171891354 var3190!1)) ; Statement: i1 = virtualinvoke r0.<java.lang.StringBuilder: int length()>() 
(define-const var1883 Int (- var377 var3379)) ; Statement: i2 = i1 - i0 
(define-const var1768 Int (min/1433046282 var83!1)) ; Statement: i10 = r1.<com.google.javascript.jscomp.regex.RegExpTree$Repetition: int min> 
(define-const var1150 Int (max/1433046282 var83!1)) ; Statement: i11 = r1.<com.google.javascript.jscomp.regex.RegExpTree$Repetition: int max> 
 ; Statement: if i10 < 2 goto $i3 = i11 - i10 
(assert (< var1768 2)) ; Cond: i10 < 2 
(define-const var3726 Int (- var1150 var1768)) ; Statement: $i3 = i11 - i10 
 ; Statement: if $i3 > 1 goto (branch) 
(assert (> var3726 1)) ; Cond: $i3 > 1 
 ; Statement: if i11 != 2147483647 goto (branch) 
(assert (not (not (= var1150 2147483647)))) ; Negate: Cond: i11 != 2147483647  
 ; Statement: lookupswitch(i10) {     case 0: goto virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(42);     case 1: goto virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(43);     default: goto $r8 = virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(123); } 
(assert (and (not (= var1768 1)) (and (not (= var1768 0)) true))) ; Intersect: Negate: Cond: i10 == 1   and Intersect: Negate: Cond: i10 == 0   and Non Conditional  
(assert true)
(define-const var2688 String (append/-1166366385 var3190!1 123)) ; Statement: $r8 = virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(123) 
(declare-const var3190!2 String)
(assert (str.prefixof var3190!1 var3190!2))
(assert true)
(define-const var3716 String (append/-1001720160 var2688 var1768)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i10) 
(declare-const var2688!1 String)
(assert (str.prefixof var2688 var2688!1))
(assert true)
;(assert (append/672562846 var3716 ",}")) ; Statement: virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(",}") 
(declare-const var3716!1 String)
(assert (= var3716!1 (str.++ var3716 ",}")))
 ; Statement: goto [?= $z1 = r1.<com.google.javascript.jscomp.regex.RegExpTree$Repetition: boolean greedy>] 
(assert true) ; Non Conditional
(define-const var134 Bool (greedy/1433046282 var83!1)) ; Statement: $z1 = r1.<com.google.javascript.jscomp.regex.RegExpTree$Repetition: boolean greedy> 
 ; Statement: if $z1 != 0 goto return 
(assert (not (= (ite var134 1 0) 0))) ; Cond: $z1 != 0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {length/-171891354=([java.lang.StringBuilder], int), appendBodySourceCode/576806983=([com.google.javascript.jscomp.regex.RegExpTree$Repetition, java.lang.StringBuilder], void), min/1433046282=([com.google.javascript.jscomp.regex.RegExpTree$Repetition], int), max/1433046282=([com.google.javascript.jscomp.regex.RegExpTree$Repetition], int), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), greedy/1433046282=([com.google.javascript.jscomp.regex.RegExpTree$Repetition], boolean)}
; {var1155=com.google.javascript.jscomp.regex.RegExpTree$Repetition, var83=r1, var3190=r0, var3379=i0, var377=i1, var1883=i2, var1768=i10, var1150=i11, var3726=$i3, var2688=$r8, var3716=$r9, var134=$z1}
; {com.google.javascript.jscomp.regex.RegExpTree$Repetition=var1155, r1=var83, r0=var3190, i0=var3379, i1=var377, i2=var1883, i10=var1768, i11=var1150, $i3=var3726, $r8=var2688, $r9=var3716, $z1=var134}
;seq <java.lang.StringBuilder: int length()>;	<java.lang.StringBuilder: int length()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>
;cnt {"<java.lang.StringBuilder: int length()>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.regex.RegExpTree$Repetition;	r0 := @parameter0: java.lang.StringBuilder;	i0 = virtualinvoke r0.<java.lang.StringBuilder: int length()>();	virtualinvoke r1.<com.google.javascript.jscomp.regex.RegExpTree$Repetition: void appendBodySourceCode(java.lang.StringBuilder)>(r0);	i1 = virtualinvoke r0.<java.lang.StringBuilder: int length()>();	i2 = i1 - i0;	i10 = r1.<com.google.javascript.jscomp.regex.RegExpTree$Repetition: int min>;	i11 = r1.<com.google.javascript.jscomp.regex.RegExpTree$Repetition: int max>;	if i10 < 2 goto $i3 = i11 - i10;	$i3 = i11 - i10;	if $i3 > 1 goto (branch);	if i11 != 2147483647 goto (branch);	lookupswitch(i10) {     case 0: goto virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(42);     case 1: goto virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(43);     default: goto $r8 = virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(123); };	$r8 = virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(123);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i10);	virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(",}");	goto [?= $z1 = r1.<com.google.javascript.jscomp.regex.RegExpTree$Repetition: boolean greedy>];	$z1 = r1.<com.google.javascript.jscomp.regex.RegExpTree$Repetition: boolean greedy>;	if $z1 != 0 goto return;	return
;block_num 7