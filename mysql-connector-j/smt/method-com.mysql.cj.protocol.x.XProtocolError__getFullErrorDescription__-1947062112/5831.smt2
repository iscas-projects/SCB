(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2287 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/-1061048412 ((s String)) String s)
(declare-fun getCode/558476134 (var2287) Int)
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getSqlState/-2140382236 (var2287) String)
(declare-fun getMsg/-398787790 (var2287) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2287 var2287)
(declare-const var2809 var2287) ; Statement: r1 := @parameter0: com.mysql.cj.x.protobuf.Mysqlx$Error 
(assert (not (= var2809 null-var2287)))
(define-const var2452 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/-1061048412 var2452 "ERROR ")) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>(java.lang.String)>("ERROR ") 
(declare-const var2452!1 String)
(assert (= var2452!1 "ERROR "))
(assert true)
(define-const var3987 Int (getCode/558476134 var2809)) ; Statement: $i0 = virtualinvoke r1.<com.mysql.cj.x.protobuf.Mysqlx$Error: int getCode()>() 
(assert true)
;(assert (append/-1001720160 var2452!1 var3987)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i0) 
(declare-const var2452!2 String)
(assert (str.prefixof var2452!1 var2452!2))
(assert true)
;(assert (append/672562846 var2452!2 " (")) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" (") 
(declare-const var2452!3 String)
(assert (= var2452!3 (str.++ var2452!2 " (")))
(assert true)
(define-const var3888 String (getSqlState/-2140382236 var2809)) ; Statement: $r2 = virtualinvoke r1.<com.mysql.cj.x.protobuf.Mysqlx$Error: java.lang.String getSqlState()>() 
(assert true)
;(assert (append/672562846 var2452!3 var3888)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var2452!4 String)
(assert (= var2452!4 (str.++ var2452!3 var3888)))
(assert true)
;(assert (append/672562846 var2452!4 ") ")) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(") ") 
(declare-const var2452!5 String)
(assert (= var2452!5 (str.++ var2452!4 ") ")))
(assert true)
(define-const var504 String (getMsg/-398787790 var2809)) ; Statement: $r3 = virtualinvoke r1.<com.mysql.cj.x.protobuf.Mysqlx$Error: java.lang.String getMsg()>() 
(assert true)
;(assert (append/672562846 var2452!5 var504)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var2452!6 String)
(assert (= var2452!6 (str.++ var2452!5 var504)))
(assert true)
(define-const var3824 String (toString/-2075883882 var2452!6)) ; Statement: $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/-1061048412=([java.lang.StringBuilder, java.lang.String], void), getCode/558476134=([com.mysql.cj.x.protobuf.Mysqlx$Error], int), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getSqlState/-2140382236=([com.mysql.cj.x.protobuf.Mysqlx$Error], java.lang.String), getMsg/-398787790=([com.mysql.cj.x.protobuf.Mysqlx$Error], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2287=com.mysql.cj.x.protobuf.Mysqlx$Error, var2809=r1, var2452=$r0, var3987=$i0, var3888=$r2, var504=$r3, var3824=$r4}
; {com.mysql.cj.x.protobuf.Mysqlx$Error=var2287, r1=var2809, $r0=var2452, $i0=var3987, $r2=var3888, $r3=var504, $r4=var3824}
;seq <java.lang.StringBuilder: void <init>(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @parameter0: com.mysql.cj.x.protobuf.Mysqlx$Error;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>(java.lang.String)>("ERROR ");	$i0 = virtualinvoke r1.<com.mysql.cj.x.protobuf.Mysqlx$Error: int getCode()>();	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i0);	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" (");	$r2 = virtualinvoke r1.<com.mysql.cj.x.protobuf.Mysqlx$Error: java.lang.String getSqlState()>();	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(") ");	$r3 = virtualinvoke r1.<com.mysql.cj.x.protobuf.Mysqlx$Error: java.lang.String getMsg()>();	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r4
;block_num 1