(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var453 0)
(declare-sort var1566 0)
(declare-sort var1247 0)
(declare-sort var10 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1247-init () var1247)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getClass/1258963082 (var10) ClassObject)
(declare-fun cast-from-var1566-to-var10 (var1566) var10)
(declare-fun append/-1031950772 (String var10) String)
(declare-fun cast-from-ClassObject-to-var10 (ClassObject) var10)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/875830710 (var1247 String) void)
(declare-const null-var453 var453)
(declare-const null-var1566 var1566)
(declare-const var3939 var453) ; Statement: r10 := @this: org.apache.poi.xssf.streaming.SXSSFFormulaEvaluator 
(assert (not (= var3939 null-var453)))
(declare-const var2408 var1566) ; Statement: r0 := @parameter0: org.apache.poi.ss.usermodel.Cell 
(assert (not (= var2408 null-var1566)))
(define-const var1433 Bool true) ; Statement: $z0 = r0 instanceof org.apache.poi.xssf.streaming.SXSSFCell 
 ; Statement: if $z0 != 0 goto $r1 = new org.apache.poi.xssf.streaming.SXSSFEvaluationCell 
(assert (not (not (= (ite var1433 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(define-const var1493 var1247 var1247-init) ; Statement: $r3 = new java.lang.IllegalArgumentException 
(define-const var2962 String String-init) ; Statement: $r4 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2962)) ; Statement: specialinvoke $r4.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2962!1 String)
(assert (= var2962!1 ""))
(assert true)
(define-const var1994 String (append/672562846 var2962!1 "Unexpected type of cell: ")) ; Statement: $r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unexpected type of cell: ") 
(declare-const var2962!2 String)
(assert (= var2962!2 (str.++ var2962!1 "Unexpected type of cell: ")))
(assert true)
(define-const var2173 ClassObject (getClass/1258963082 (cast-from-var1566-to-var10 var2408))) ; Statement: $r5 = virtualinvoke r0.<java.lang.Object: java.lang.Class getClass()>() 
(assert true)
(define-const var1788 String (append/-1031950772 var1994 (cast-from-ClassObject-to-var10 var2173))) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r5) 
(declare-const var1994!1 String)
(assert (str.prefixof var1994 var1994!1))
(assert true)
(define-const var26 String (append/672562846 var1788 ". Only SXSSFCells can be evaluated.")) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(". Only SXSSFCells can be evaluated.") 
(declare-const var1788!1 String)
(assert (= var1788!1 (str.++ var1788 ". Only SXSSFCells can be evaluated.")))
(assert true)
(define-const var1491 String (toString/-2075883882 var26)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/875830710 var1493 var1491)) ; Statement: specialinvoke $r3.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r9) 

(declare-const var1493!1 var1247)
(declare-const var1491!1 String)
 ; Statement: throw $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {var1247-init=([], java.lang.IllegalArgumentException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getClass/1258963082=([java.lang.Object], java.lang.Class), cast-from-var1566-to-var10=([org.apache.poi.ss.usermodel.Cell], java.lang.Object), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-ClassObject-to-var10=([java.lang.Class], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var453=org.apache.poi.xssf.streaming.SXSSFFormulaEvaluator, var3939=r10, var1566=org.apache.poi.ss.usermodel.Cell, var2408=r0, var1433=$z0, var1247=java.lang.IllegalArgumentException, var1493=$r3, var2962=$r4, var1994=$r6, var10=java.lang.Object, var2173=$r5, var1788=$r7, var26=$r8, var1491=$r9}
; {org.apache.poi.xssf.streaming.SXSSFFormulaEvaluator=var453, r10=var3939, org.apache.poi.ss.usermodel.Cell=var1566, r0=var2408, $z0=var1433, java.lang.IllegalArgumentException=var1247, $r3=var1493, $r4=var2962, $r6=var1994, java.lang.Object=var10, $r5=var2173, $r7=var1788, $r8=var26, $r9=var1491}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r10 := @this: org.apache.poi.xssf.streaming.SXSSFFormulaEvaluator;	r0 := @parameter0: org.apache.poi.ss.usermodel.Cell;	$z0 = r0 instanceof org.apache.poi.xssf.streaming.SXSSFCell;	if $z0 != 0 goto $r1 = new org.apache.poi.xssf.streaming.SXSSFEvaluationCell;	$r3 = new java.lang.IllegalArgumentException;	$r4 = new java.lang.StringBuilder;	specialinvoke $r4.<java.lang.StringBuilder: void <init>()>();	$r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unexpected type of cell: ");	$r5 = virtualinvoke r0.<java.lang.Object: java.lang.Class getClass()>();	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r5);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(". Only SXSSFCells can be evaluated.");	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r3.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r9);	throw $r3
;block_num 2