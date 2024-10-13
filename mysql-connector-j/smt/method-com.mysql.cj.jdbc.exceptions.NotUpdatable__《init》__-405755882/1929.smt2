(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3548 0)
(declare-sort var1946 0)
(declare-sort var1947 0)
(declare-sort var1843 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun var1947_getString/-1547297038 (String) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1654072928 (var1843 String String) void)
(declare-fun cast-from-var3548-to-var1843 (var3548) var1843)
(declare-const null-var3548 var3548)
(declare-const null-String String)
(declare-const var1200 var3548) ; Statement: r0 := @this: com.mysql.cj.jdbc.exceptions.NotUpdatable 
(assert (not (= var1200 null-var3548)))
(declare-const var591 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var591 null-String)))
(define-const var1659 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1659)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1659!1 String)
(assert (= var1659!1 ""))
(assert true)
(define-const var2803 String (append/672562846 var1659!1 var591)) ; Statement: $r4 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2) 
(declare-const var1659!2 String)
(assert (= var1659!2 (str.++ var1659!1 var591)))
(define-const var2439 String (var1947_getString/-1547297038 "NotUpdatable.1")) ; Statement: $r3 = staticinvoke <com.mysql.cj.Messages: java.lang.String getString(java.lang.String)>("NotUpdatable.1") 
(assert true)
(define-const var2730 String (append/672562846 var2803 var2439)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var2803!1 String)
(assert (= var2803!1 (str.++ var2803 var2439)))
(assert true)
(define-const var2471 String (toString/-2075883882 var2730)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1654072928 (cast-from-var3548-to-var1843 var1200) var2471 "S1000")) ; Statement: specialinvoke r0.<java.sql.SQLException: void <init>(java.lang.String,java.lang.String)>($r6, "S1000") 

(declare-const var1200!1 var3548)
(declare-const var2471!1 String)
(declare-const var2955 String)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), var1947_getString/-1547297038=([java.lang.String], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1654072928=([java.sql.SQLException, java.lang.String, java.lang.String], void), cast-from-var3548-to-var1843=([com.mysql.cj.jdbc.exceptions.NotUpdatable], java.sql.SQLException)}
; {var3548=com.mysql.cj.jdbc.exceptions.NotUpdatable, var1200=r0, var591=r2, var1946=null_type, var1659=$r1, var2803=$r4, var1947=com.mysql.cj.Messages, var2439=$r3, var2730=$r5, var2471=$r6, var1843=java.sql.SQLException, var2955="S1000"}
; {com.mysql.cj.jdbc.exceptions.NotUpdatable=var3548, r0=var1200, r2=var591, null_type=var1946, $r1=var1659, $r4=var2803, com.mysql.cj.Messages=var1947, $r3=var2439, $r5=var2730, $r6=var2471, java.sql.SQLException=var1843, "S1000"=var2955}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.mysql.cj.jdbc.exceptions.NotUpdatable;	r2 := @parameter0: java.lang.String;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2);	$r3 = staticinvoke <com.mysql.cj.Messages: java.lang.String getString(java.lang.String)>("NotUpdatable.1");	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke r0.<java.sql.SQLException: void <init>(java.lang.String,java.lang.String)>($r6, "S1000");	return
;block_num 1