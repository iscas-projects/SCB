(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2105 0)
(declare-sort var2193 0)
(declare-sort var2505 0)
(declare-sort var903 0)
(declare-sort var1374 0)
(declare-sort var1613 0)
(declare-sort var1647 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2505_indexOfIgnoreCase/1193821831 (String String) Int)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(define-fun substring/850833817 ((s String) (begin Int)) String (str.substr s begin (- (str.len s) begin)))
(define-fun is-whitespace ((char String)) Bool (< (str.to_code char) 33))
(define-fun-rec trim-left ((s String)) String (ite (= s "") "" (ite (is-whitespace (str.substr s 0 1)) (trim-left (str.substr s 1 (- (str.len s) 1))) s)))
(define-fun-rec trim-right ((s String)) String (ite (= s "") "" (ite (is-whitespace (str.substr s (- (str.len s) 1) 1)) (trim-right (str.substr s 0 (- (str.len s) 1))) s)))
(define-fun trim/-847153721 ((s String)) String (trim-right (trim-left s)))
(declare-fun var903-init () var903)
(declare-fun processKeyValuePattern/-171378188 (var2105 var1374 String) var1613)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun <init>/145881618 (var903 var1647 String Int String String var1613) void)
(declare-fun cast-from-var2105-to-var1647 (var2105) var1647)
(declare-const null-var2105 var2105)
(declare-const null-String String)
(declare-const var2105-ADDRESS_EQUALS_HOST_PTRN var1374)
(declare-const null-NullType var2193)
(declare-const var299 var2105) ; Statement: r3 := @this: com.mysql.cj.conf.ConnectionUrlParser 
(assert (not (= var299 null-var2105)))
(declare-const var2516 String) ; Statement: r4 := @parameter0: java.lang.String 
(assert (not (= var2516 null-String)))
(declare-const var2693 String) ; Statement: r5 := @parameter1: java.lang.String 
(assert (not (= var2693 null-String)))
(declare-const var353 String) ; Statement: r8 := @parameter2: java.lang.String 
(assert (not (= var353 null-String)))
(define-const var2921 Int (var2505_indexOfIgnoreCase/1193821831 var353 "ADDRESS=")) ; Statement: i0 = staticinvoke <com.mysql.cj.util.StringUtils: int indexOfIgnoreCase(java.lang.String,java.lang.String)>(r8, "ADDRESS=") 
 ; Statement: if i0 == 0 goto $r0 = "ADDRESS=" 
(assert (= var2921 0)) ; Cond: i0 == 0 
(define-const var979 String "ADDRESS=") ; Statement: $r0 = "ADDRESS=" 
(assert true)
(define-const var1367 Int (length/-134980193 var979)) ; Statement: $i1 = virtualinvoke $r0.<java.lang.String: int length()>() 
(define-const var2594 Int (+ var2921 var1367)) ; Statement: $i2 = i0 + $i1 
(assert (and true (and (>= var2594 0) (>= (str.len var353) var2594))))
(define-const var1433 String (substring/850833817 var353 var2594)) ; Statement: $r1 = virtualinvoke r8.<java.lang.String: java.lang.String substring(int)>($i2) 
(assert true)
(define-const var277 String (trim/-847153721 var1433)) ; Statement: r9 = virtualinvoke $r1.<java.lang.String: java.lang.String trim()>() 
(define-const var3485 var903 var903-init) ; Statement: $r10 = new com.mysql.cj.conf.HostInfo 
(define-const var3014 var1374 var2105-ADDRESS_EQUALS_HOST_PTRN) ; Statement: $r6 = <com.mysql.cj.conf.ConnectionUrlParser: java.util.regex.Pattern ADDRESS_EQUALS_HOST_PTRN> 
(assert true)
(define-const var2136 var1613 (processKeyValuePattern/-171378188 var299 var3014 var277)) ; Statement: $r7 = specialinvoke r3.<com.mysql.cj.conf.ConnectionUrlParser: java.util.Map processKeyValuePattern(java.util.regex.Pattern,java.lang.String)>($r6, r9) 
(define-const var1165 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i4 = (int) -1 
(assert true)
;(assert (<init>/145881618 var3485 (cast-from-var2105-to-var1647 var299) null-String var1165 var2516 var2693 var2136)) ; Statement: specialinvoke $r10.<com.mysql.cj.conf.HostInfo: void <init>(com.mysql.cj.conf.DatabaseUrlContainer,java.lang.String,int,java.lang.String,java.lang.String,java.util.Map)>(r3, null, $i4, r4, r5, $r7) 

(declare-const var3485!1 var903)
(declare-const var299!1 var2105)
(declare-const var1548 var2193)
(declare-const var1165!1 Int)
(declare-const var2516!1 String)
(declare-const var2693!1 String)
(declare-const var2136!1 var1613)
 ; Statement: return $r10 
(check-sat)
(get-model)
(get-unsat-core)
; {var2505_indexOfIgnoreCase/1193821831=([java.lang.String, java.lang.String], int), length/-134980193=([java.lang.String], int), substring/850833817=([java.lang.String, int], java.lang.String), trim/-847153721=([java.lang.String], java.lang.String), var903-init=([], com.mysql.cj.conf.HostInfo), processKeyValuePattern/-171378188=([com.mysql.cj.conf.ConnectionUrlParser, java.util.regex.Pattern, java.lang.String], java.util.Map), cast-from-Int-to-Int=([int], int), <init>/145881618=([com.mysql.cj.conf.HostInfo, com.mysql.cj.conf.DatabaseUrlContainer, java.lang.String, int, java.lang.String, java.lang.String, java.util.Map], void), cast-from-var2105-to-var1647=([com.mysql.cj.conf.ConnectionUrlParser], com.mysql.cj.conf.DatabaseUrlContainer)}
; {var2105=com.mysql.cj.conf.ConnectionUrlParser, var299=r3, var2516=r4, var2193=null_type, var2693=r5, var353=r8, var2505=com.mysql.cj.util.StringUtils, var2921=i0, var979=$r0, var1367=$i1, var2594=$i2, var1433=$r1, var277=r9, var903=com.mysql.cj.conf.HostInfo, var3485=$r10, var1374=java.util.regex.Pattern, var3014=$r6, var1613=java.util.Map, var2136=$r7, var1165=$i4, var1647=com.mysql.cj.conf.DatabaseUrlContainer, var1548=null}
; {com.mysql.cj.conf.ConnectionUrlParser=var2105, r3=var299, r4=var2516, null_type=var2193, r5=var2693, r8=var353, com.mysql.cj.util.StringUtils=var2505, i0=var2921, $r0=var979, $i1=var1367, $i2=var2594, $r1=var1433, r9=var277, com.mysql.cj.conf.HostInfo=var903, $r10=var3485, java.util.regex.Pattern=var1374, $r6=var3014, java.util.Map=var1613, $r7=var2136, $i4=var1165, com.mysql.cj.conf.DatabaseUrlContainer=var1647, null=var1548}
;seq <java.lang.String: int length()>;	<java.lang.String: java.lang.String substring(int)>;	<java.lang.String: java.lang.String trim()>
;cnt {"<java.lang.String: int length()>": 1,"<java.lang.String: java.lang.String substring(int)>": 1,"<java.lang.String: java.lang.String trim()>": 1}
;stmts r3 := @this: com.mysql.cj.conf.ConnectionUrlParser;	r4 := @parameter0: java.lang.String;	r5 := @parameter1: java.lang.String;	r8 := @parameter2: java.lang.String;	i0 = staticinvoke <com.mysql.cj.util.StringUtils: int indexOfIgnoreCase(java.lang.String,java.lang.String)>(r8, "ADDRESS=");	if i0 == 0 goto $r0 = "ADDRESS=";	$r0 = "ADDRESS=";	$i1 = virtualinvoke $r0.<java.lang.String: int length()>();	$i2 = i0 + $i1;	$r1 = virtualinvoke r8.<java.lang.String: java.lang.String substring(int)>($i2);	r9 = virtualinvoke $r1.<java.lang.String: java.lang.String trim()>();	$r10 = new com.mysql.cj.conf.HostInfo;	$r6 = <com.mysql.cj.conf.ConnectionUrlParser: java.util.regex.Pattern ADDRESS_EQUALS_HOST_PTRN>;	$r7 = specialinvoke r3.<com.mysql.cj.conf.ConnectionUrlParser: java.util.Map processKeyValuePattern(java.util.regex.Pattern,java.lang.String)>($r6, r9);	$i4 = (int) -1;	specialinvoke $r10.<com.mysql.cj.conf.HostInfo: void <init>(com.mysql.cj.conf.DatabaseUrlContainer,java.lang.String,int,java.lang.String,java.lang.String,java.util.Map)>(r3, null, $i4, r4, r5, $r7);	return $r10
;block_num 2