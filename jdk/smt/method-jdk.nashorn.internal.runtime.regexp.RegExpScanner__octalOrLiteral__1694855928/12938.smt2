(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3694 0)
(declare-sort var1677 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun append/-1166366385 (String Int) String)
(declare-fun var1677_unicode/282183728 (Int String) void)
(define-fun substring/850833817 ((s String) (begin Int)) String (str.substr s begin (- (str.len s) begin)))
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-const null-String String)
(declare-const var1455 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var1455 null-String)))
(declare-const var789 String) ; Statement: r1 := @parameter1: java.lang.StringBuilder 
(assert (not (= var789 null-String)))
(assert true)
(define-const var1048 Int (length/-134980193 var1455)) ; Statement: i0 = virtualinvoke r0.<java.lang.String: int length()>() 
(define-const var30 Int 0) ; Statement: i4 = 0 
(define-const var1927 Int 0) ; Statement: i5 = 0 
(assert true) ; Non Conditional
 ; Statement: if i5 >= i0 goto (branch) 
(assert (>= var1927 var1048)) ; Cond: i5 >= i0 
 ; Statement: if i4 <= 0 goto virtualinvoke r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0) 
(assert (not (<= var30 0))) ; Negate: Cond: i4 <= 0  
(assert true)
;(assert (append/-1166366385 var789 92)) ; Statement: virtualinvoke r1.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(92) 
(declare-const var789!1 String)
(assert (str.prefixof var789 var789!1))
;(assert (var1677_unicode/282183728 var30 var789!1)) ; Statement: staticinvoke <jdk.nashorn.internal.runtime.regexp.RegExpScanner: void unicode(int,java.lang.StringBuilder)>(i4, r1) 

(declare-const var30!1 Int)
(declare-const var789!2 String)
(assert (and true (and (>= var1927 0) (>= (str.len var1455) var1927))))
(define-const var1175 String (substring/850833817 var1455 var1927)) ; Statement: $r2 = virtualinvoke r0.<java.lang.String: java.lang.String substring(int)>(i5) 
(assert true)
;(assert (append/672562846 var789!2 var1175)) ; Statement: virtualinvoke r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var789!3 String)
(assert (= var789!3 (str.++ var789!2 var1175)))
 ; Statement: goto [?= return] 
(assert true) ; Non Conditional
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {length/-134980193=([java.lang.String], int), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), var1677_unicode/282183728=([int, java.lang.StringBuilder], void), substring/850833817=([java.lang.String, int], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder)}
; {var1455=r0, var3694=null_type, var789=r1, var1048=i0, var30=i4, var1927=i5, var1677=jdk.nashorn.internal.runtime.regexp.RegExpScanner, var1175=$r2}
; {r0=var1455, null_type=var3694, r1=var789, i0=var1048, i4=var30, i5=var1927, jdk.nashorn.internal.runtime.regexp.RegExpScanner=var1677, $r2=var1175}
;seq <java.lang.String: int length()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.String: java.lang.String substring(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>
;cnt {"<java.lang.String: int length()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1,"<java.lang.String: java.lang.String substring(int)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1}
;stmts r0 := @parameter0: java.lang.String;	r1 := @parameter1: java.lang.StringBuilder;	i0 = virtualinvoke r0.<java.lang.String: int length()>();	i4 = 0;	i5 = 0;	if i5 >= i0 goto (branch);	if i4 <= 0 goto virtualinvoke r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0);	virtualinvoke r1.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(92);	staticinvoke <jdk.nashorn.internal.runtime.regexp.RegExpScanner: void unicode(int,java.lang.StringBuilder)>(i4, r1);	$r2 = virtualinvoke r0.<java.lang.String: java.lang.String substring(int)>(i5);	virtualinvoke r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	goto [?= return];	return
;block_num 5