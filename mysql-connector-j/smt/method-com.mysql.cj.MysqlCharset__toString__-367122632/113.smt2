(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3535 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun charsetName/438783640 (var3535) String)
(declare-fun mblen/438783640 (var3535) Int)
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3535 var3535)
(declare-const var3012 var3535) ; Statement: r1 := @this: com.mysql.cj.MysqlCharset 
(assert (not (= var3012 null-var3535)))
(define-const var2706 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2706)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2706!1 String)
(assert (= var2706!1 ""))
(assert true)
;(assert (append/672562846 var2706!1 "[")) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("[") 
(declare-const var2706!2 String)
(assert (= var2706!2 (str.++ var2706!1 "[")))
(assert true)
;(assert (append/672562846 var2706!2 "charsetName=")) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("charsetName=") 
(declare-const var2706!3 String)
(assert (= var2706!3 (str.++ var2706!2 "charsetName=")))
(define-const var2701 String (charsetName/438783640 var3012)) ; Statement: $r2 = r1.<com.mysql.cj.MysqlCharset: java.lang.String charsetName> 
(assert true)
;(assert (append/672562846 var2706!3 var2701)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var2706!4 String)
(assert (= var2706!4 (str.++ var2706!3 var2701)))
(assert true)
;(assert (append/672562846 var2706!4 ",mblen=")) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(",mblen=") 
(declare-const var2706!5 String)
(assert (= var2706!5 (str.++ var2706!4 ",mblen=")))
(define-const var3677 Int (mblen/438783640 var3012)) ; Statement: $i0 = r1.<com.mysql.cj.MysqlCharset: int mblen> 
(assert true)
;(assert (append/-1001720160 var2706!5 var3677)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i0) 
(declare-const var2706!6 String)
(assert (str.prefixof var2706!5 var2706!6))
(assert true)
;(assert (append/672562846 var2706!6 "]")) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]") 
(declare-const var2706!7 String)
(assert (= var2706!7 (str.++ var2706!6 "]")))
(assert true)
(define-const var3266 String (toString/-2075883882 var2706!7)) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), charsetName/438783640=([com.mysql.cj.MysqlCharset], java.lang.String), mblen/438783640=([com.mysql.cj.MysqlCharset], int), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3535=com.mysql.cj.MysqlCharset, var3012=r1, var2706=$r0, var2701=$r2, var3677=$i0, var3266=$r3}
; {com.mysql.cj.MysqlCharset=var3535, r1=var3012, $r0=var2706, $r2=var2701, $i0=var3677, $r3=var3266}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 5,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: com.mysql.cj.MysqlCharset;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("[");	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("charsetName=");	$r2 = r1.<com.mysql.cj.MysqlCharset: java.lang.String charsetName>;	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(",mblen=");	$i0 = r1.<com.mysql.cj.MysqlCharset: int mblen>;	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i0);	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]");	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r3
;block_num 1