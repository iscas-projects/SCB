(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2903 0)
(declare-sort var1602 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/-1061048412 ((s String)) String s)
(declare-fun name/-1667261600 (var2903) String)
(declare-fun var1602_quoteIdentifier/-407364542 (String) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2903 var2903)
(declare-const var3784 var2903) ; Statement: r1 := @this: com.mysql.cj.xdevapi.SchemaImpl 
(assert (not (= var3784 null-var2903)))
(define-const var2986 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/-1061048412 var2986 "Schema(")) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>(java.lang.String)>("Schema(") 
(declare-const var2986!1 String)
(assert (= var2986!1 "Schema("))
(define-const var1681 String (name/-1667261600 var3784)) ; Statement: $r2 = r1.<com.mysql.cj.xdevapi.SchemaImpl: java.lang.String name> 
(define-const var277 String (var1602_quoteIdentifier/-407364542 var1681)) ; Statement: $r3 = staticinvoke <com.mysql.cj.xdevapi.ExprUnparser: java.lang.String quoteIdentifier(java.lang.String)>($r2) 
(assert true)
;(assert (append/672562846 var2986!1 var277)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var2986!2 String)
(assert (= var2986!2 (str.++ var2986!1 var277)))
(assert true)
;(assert (append/672562846 var2986!2 ")")) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")") 
(declare-const var2986!3 String)
(assert (= var2986!3 (str.++ var2986!2 ")")))
(assert true)
(define-const var1918 String (toString/-2075883882 var2986!3)) ; Statement: $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/-1061048412=([java.lang.StringBuilder, java.lang.String], void), name/-1667261600=([com.mysql.cj.xdevapi.SchemaImpl], java.lang.String), var1602_quoteIdentifier/-407364542=([java.lang.String], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2903=com.mysql.cj.xdevapi.SchemaImpl, var3784=r1, var2986=$r0, var1681=$r2, var1602=com.mysql.cj.xdevapi.ExprUnparser, var277=$r3, var1918=$r4}
; {com.mysql.cj.xdevapi.SchemaImpl=var2903, r1=var3784, $r0=var2986, $r2=var1681, com.mysql.cj.xdevapi.ExprUnparser=var1602, $r3=var277, $r4=var1918}
;seq <java.lang.StringBuilder: void <init>(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: com.mysql.cj.xdevapi.SchemaImpl;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>(java.lang.String)>("Schema(");	$r2 = r1.<com.mysql.cj.xdevapi.SchemaImpl: java.lang.String name>;	$r3 = staticinvoke <com.mysql.cj.xdevapi.ExprUnparser: java.lang.String quoteIdentifier(java.lang.String)>($r2);	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")");	$r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r4
;block_num 1