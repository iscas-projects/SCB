(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2636 0)
(declare-sort var3889 0)
(declare-sort var1140 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/-1061048412 ((s String)) String s)
(declare-fun schema/2128262959 (var2636) var3889)
(declare-fun getName/-1690903219 (var3889) String)
(declare-fun var1140_quoteIdentifier/-407364542 (String) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun name/2128262959 (var2636) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2636 var2636)
(declare-const var2247 var2636) ; Statement: r1 := @this: com.mysql.cj.xdevapi.TableImpl 
(assert (not (= var2247 null-var2636)))
(define-const var3193 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/-1061048412 var3193 "Table(")) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>(java.lang.String)>("Table(") 
(declare-const var3193!1 String)
(assert (= var3193!1 "Table("))
(define-const var1951 var3889 (schema/2128262959 var2247)) ; Statement: $r2 = r1.<com.mysql.cj.xdevapi.TableImpl: com.mysql.cj.xdevapi.SchemaImpl schema> 
(assert true)
(define-const var2241 String (getName/-1690903219 var1951)) ; Statement: $r3 = virtualinvoke $r2.<com.mysql.cj.xdevapi.SchemaImpl: java.lang.String getName()>() 
(define-const var467 String (var1140_quoteIdentifier/-407364542 var2241)) ; Statement: $r4 = staticinvoke <com.mysql.cj.xdevapi.ExprUnparser: java.lang.String quoteIdentifier(java.lang.String)>($r3) 
(assert true)
;(assert (append/672562846 var3193!1 var467)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4) 
(declare-const var3193!2 String)
(assert (= var3193!2 (str.++ var3193!1 var467)))
(assert true)
;(assert (append/672562846 var3193!2 ".")) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(".") 
(declare-const var3193!3 String)
(assert (= var3193!3 (str.++ var3193!2 ".")))
(define-const var2821 String (name/2128262959 var2247)) ; Statement: $r5 = r1.<com.mysql.cj.xdevapi.TableImpl: java.lang.String name> 
(define-const var24 String (var1140_quoteIdentifier/-407364542 var2821)) ; Statement: $r6 = staticinvoke <com.mysql.cj.xdevapi.ExprUnparser: java.lang.String quoteIdentifier(java.lang.String)>($r5) 
(assert true)
;(assert (append/672562846 var3193!3 var24)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6) 
(declare-const var3193!4 String)
(assert (= var3193!4 (str.++ var3193!3 var24)))
(assert true)
;(assert (append/672562846 var3193!4 ")")) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")") 
(declare-const var3193!5 String)
(assert (= var3193!5 (str.++ var3193!4 ")")))
(assert true)
(define-const var2303 String (toString/-2075883882 var3193!5)) ; Statement: $r7 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/-1061048412=([java.lang.StringBuilder, java.lang.String], void), schema/2128262959=([com.mysql.cj.xdevapi.TableImpl], com.mysql.cj.xdevapi.SchemaImpl), getName/-1690903219=([com.mysql.cj.xdevapi.SchemaImpl], java.lang.String), var1140_quoteIdentifier/-407364542=([java.lang.String], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), name/2128262959=([com.mysql.cj.xdevapi.TableImpl], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2636=com.mysql.cj.xdevapi.TableImpl, var2247=r1, var3193=$r0, var3889=com.mysql.cj.xdevapi.SchemaImpl, var1951=$r2, var2241=$r3, var1140=com.mysql.cj.xdevapi.ExprUnparser, var467=$r4, var2821=$r5, var24=$r6, var2303=$r7}
; {com.mysql.cj.xdevapi.TableImpl=var2636, r1=var2247, $r0=var3193, com.mysql.cj.xdevapi.SchemaImpl=var3889, $r2=var1951, $r3=var2241, com.mysql.cj.xdevapi.ExprUnparser=var1140, $r4=var467, $r5=var2821, $r6=var24, $r7=var2303}
;seq <java.lang.StringBuilder: void <init>(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: com.mysql.cj.xdevapi.TableImpl;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>(java.lang.String)>("Table(");	$r2 = r1.<com.mysql.cj.xdevapi.TableImpl: com.mysql.cj.xdevapi.SchemaImpl schema>;	$r3 = virtualinvoke $r2.<com.mysql.cj.xdevapi.SchemaImpl: java.lang.String getName()>();	$r4 = staticinvoke <com.mysql.cj.xdevapi.ExprUnparser: java.lang.String quoteIdentifier(java.lang.String)>($r3);	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4);	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(".");	$r5 = r1.<com.mysql.cj.xdevapi.TableImpl: java.lang.String name>;	$r6 = staticinvoke <com.mysql.cj.xdevapi.ExprUnparser: java.lang.String quoteIdentifier(java.lang.String)>($r5);	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6);	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")");	$r7 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r7
;block_num 1