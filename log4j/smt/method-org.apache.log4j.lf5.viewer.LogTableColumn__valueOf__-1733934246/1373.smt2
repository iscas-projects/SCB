(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3120 0)
(declare-sort var722 0)
(declare-sort var3673 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(declare-fun <init>/-1430969082 (String) void)
(define-fun append/1560614132 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-222306083 ((s String)) String s)
(declare-fun var3673-init () var3673)
(declare-fun <init>/1703310567 (var3673 String) void)
(declare-const null-String String)
(declare-const null-var722 var722)
(declare-const var1030 String) ; Statement: r10 := @parameter0: java.lang.String 
(assert (not (= var1030 null-String)))
(define-const var1439 var722 null-var722) ; Statement: r11 = null 
 ; Statement: if r10 == null goto (branch) 
(assert (= var1030 null-String)) ; Cond: r10 == null 
 ; Statement: if r11 != null goto return r11 
(assert (not (not (= var1439 null-var722)))) ; Negate: Cond: r11 != null  
(define-const var266 String String-init) ; Statement: $r0 = new java.lang.StringBuffer 
(assert true)
;(assert (<init>/-1430969082 var266)) ; Statement: specialinvoke $r0.<java.lang.StringBuffer: void <init>()>() 

(declare-const var266!1 String)
(define-const var3999 String String-init) ; Statement: $r1 = new java.lang.StringBuffer 
(assert true)
;(assert (<init>/-1430969082 var3999)) ; Statement: specialinvoke $r1.<java.lang.StringBuffer: void <init>()>() 

(declare-const var3999!1 String)
(assert true)
(define-const var3923 String (append/1560614132 var3999!1 "Error while trying to parse (")) ; Statement: $r2 = virtualinvoke $r1.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("Error while trying to parse (") 
(declare-const var3999!2 String)
(assert (str.prefixof var3999!1 var3999!2))
(assert true)
(define-const var1937 String (append/1560614132 var3923 var1030)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(r10) 
(declare-const var3923!1 String)
(assert (str.prefixof var3923 var3923!1))
(assert true)
(define-const var1497 String (append/1560614132 var1937 ") into")) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(") into") 
(declare-const var1937!1 String)
(assert (str.prefixof var1937 var1937!1))
(assert true)
(define-const var3126 String (toString/-222306083 var1497)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuffer: java.lang.String toString()>() 
(assert true)
;(assert (append/1560614132 var266!1 var3126)) ; Statement: virtualinvoke $r0.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r5) 
(declare-const var266!2 String)
(assert (str.prefixof var266!1 var266!2))
(assert true)
;(assert (append/1560614132 var266!2 " a LogTableColumn.")) ; Statement: virtualinvoke $r0.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(" a LogTableColumn.") 
(declare-const var266!3 String)
(assert (str.prefixof var266!2 var266!3))
(define-const var758 var3673 var3673-init) ; Statement: $r6 = new org.apache.log4j.lf5.viewer.LogTableColumnFormatException 
(assert true)
(define-const var3825 String (toString/-222306083 var266!3)) ; Statement: $r7 = virtualinvoke $r0.<java.lang.StringBuffer: java.lang.String toString()>() 
(assert true)
;(assert (<init>/1703310567 var758 var3825)) ; Statement: specialinvoke $r6.<org.apache.log4j.lf5.viewer.LogTableColumnFormatException: void <init>(java.lang.String)>($r7) 

(declare-const var758!1 var3673)
(declare-const var3825!1 String)
 ; Statement: throw $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuffer), <init>/-1430969082=([java.lang.StringBuffer], void), append/1560614132=([java.lang.StringBuffer, java.lang.String], java.lang.StringBuffer), toString/-222306083=([java.lang.StringBuffer], java.lang.String), var3673-init=([], org.apache.log4j.lf5.viewer.LogTableColumnFormatException), <init>/1703310567=([org.apache.log4j.lf5.viewer.LogTableColumnFormatException, java.lang.String], void)}
; {var1030=r10, var3120=null_type, var722=org.apache.log4j.lf5.viewer.LogTableColumn, var1439=r11, var266=$r0, var3999=$r1, var3923=$r2, var1937=$r3, var1497=$r4, var3126=$r5, var3673=org.apache.log4j.lf5.viewer.LogTableColumnFormatException, var758=$r6, var3825=$r7}
; {r10=var1030, null_type=var3120, org.apache.log4j.lf5.viewer.LogTableColumn=var722, r11=var1439, $r0=var266, $r1=var3999, $r2=var3923, $r3=var1937, $r4=var1497, $r5=var3126, org.apache.log4j.lf5.viewer.LogTableColumnFormatException=var3673, $r6=var758, $r7=var3825}
;seq <java.lang.StringBuffer: void <init>()>;	<java.lang.StringBuffer: void <init>()>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.String toString()>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.String toString()>
;cnt {"<java.lang.StringBuffer: void <init>()>": 2,"<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>": 5,"<java.lang.StringBuffer: java.lang.String toString()>": 2}
;stmts r10 := @parameter0: java.lang.String;	r11 = null;	if r10 == null goto (branch);	if r11 != null goto return r11;	$r0 = new java.lang.StringBuffer;	specialinvoke $r0.<java.lang.StringBuffer: void <init>()>();	$r1 = new java.lang.StringBuffer;	specialinvoke $r1.<java.lang.StringBuffer: void <init>()>();	$r2 = virtualinvoke $r1.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("Error while trying to parse (");	$r3 = virtualinvoke $r2.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(r10);	$r4 = virtualinvoke $r3.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(") into");	$r5 = virtualinvoke $r4.<java.lang.StringBuffer: java.lang.String toString()>();	virtualinvoke $r0.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r5);	virtualinvoke $r0.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(" a LogTableColumn.");	$r6 = new org.apache.log4j.lf5.viewer.LogTableColumnFormatException;	$r7 = virtualinvoke $r0.<java.lang.StringBuffer: java.lang.String toString()>();	specialinvoke $r6.<org.apache.log4j.lf5.viewer.LogTableColumnFormatException: void <init>(java.lang.String)>($r7);	throw $r6
;block_num 3