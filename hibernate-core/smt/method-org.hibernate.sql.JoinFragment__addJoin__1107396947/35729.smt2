(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var788 0)
(declare-sort var1565 0)
(declare-sort var3606 0)
(declare-sort var1308 0)
(declare-sort var1597 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getLength-Arr-String-2 ((Array Int (Array Int String))) Int)
(declare-fun var1308-init () var1308)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getClass/1258963082 (var1597) ClassObject)
(declare-fun cast-from-var788-to-var1597 (var788) var1597)
(declare-fun append/-1031950772 (String var1597) String)
(declare-fun cast-from-ClassObject-to-var1597 (ClassObject) var1597)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-630064361 (var1308 String) void)
(declare-const null-var788 var788)
(declare-const null-String String)
(declare-const null-__Array__Int____Array__Int__String____ (Array Int (Array Int String)))
(declare-const null-__Array__Int__String__ (Array Int String))
(declare-const null-var3606 var3606)
(declare-const var3118 var788) ; Statement: r1 := @this: org.hibernate.sql.JoinFragment 
(assert (not (= var3118 null-var788)))
(declare-const var906 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var906 null-String)))
(declare-const var1920 String) ; Statement: r3 := @parameter1: java.lang.String 
(assert (not (= var1920 null-String)))
(declare-const var812 (Array Int (Array Int String))) ; Statement: r0 := @parameter2: java.lang.String[][] 
(assert (not (= var812 null-__Array__Int____Array__Int__String____)))
(declare-const var2469 (Array Int String)) ; Statement: r4 := @parameter3: java.lang.String[] 
(assert (not (= var2469 null-__Array__Int__String__)))
(declare-const var3161 var3606) ; Statement: r5 := @parameter4: org.hibernate.sql.JoinType 
(assert (not (= var3161 null-var3606)))
(declare-const var3173 String) ; Statement: r6 := @parameter5: java.lang.String 
(assert (not (= var3173 null-String)))
(define-const var1009 Int (getLength-Arr-String-2 var812)) ; Statement: $i0 = lengthof r0 
 ; Statement: if $i0 <= 1 goto $r7 = r0[0] 
(assert (not (<= var1009 1))) ; Negate: Cond: $i0 <= 1  
(define-const var676 var1308 var1308-init) ; Statement: $r8 = new java.lang.UnsupportedOperationException 
(define-const var3416 String String-init) ; Statement: $r9 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3416)) ; Statement: specialinvoke $r9.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3416!1 String)
(assert (= var3416!1 ""))
(assert true)
(define-const var1713 String (append/672562846 var3416!1 "The join fragment does not support multiple foreign key columns: ")) ; Statement: $r11 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("The join fragment does not support multiple foreign key columns: ") 
(declare-const var3416!2 String)
(assert (= var3416!2 (str.++ var3416!1 "The join fragment does not support multiple foreign key columns: ")))
(assert true)
(define-const var1028 ClassObject (getClass/1258963082 (cast-from-var788-to-var1597 var3118))) ; Statement: $r10 = virtualinvoke r1.<java.lang.Object: java.lang.Class getClass()>() 
(assert true)
(define-const var1885 String (append/-1031950772 var1713 (cast-from-ClassObject-to-var1597 var1028))) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r10) 
(declare-const var1713!1 String)
(assert (str.prefixof var1713 var1713!1))
(assert true)
(define-const var3655 String (toString/-2075883882 var1885)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-630064361 var676 var3655)) ; Statement: specialinvoke $r8.<java.lang.UnsupportedOperationException: void <init>(java.lang.String)>($r13) 

(declare-const var676!1 var1308)
(declare-const var3655!1 String)
 ; Statement: throw $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {getLength-Arr-String-2=([java.lang.String[][]], int), var1308-init=([], java.lang.UnsupportedOperationException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getClass/1258963082=([java.lang.Object], java.lang.Class), cast-from-var788-to-var1597=([org.hibernate.sql.JoinFragment], java.lang.Object), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-ClassObject-to-var1597=([java.lang.Class], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-630064361=([java.lang.UnsupportedOperationException, java.lang.String], void)}
; {var788=org.hibernate.sql.JoinFragment, var3118=r1, var906=r2, var1565=null_type, var1920=r3, var812=r0, var2469=r4, var3606=org.hibernate.sql.JoinType, var3161=r5, var3173=r6, var1009=$i0, var1308=java.lang.UnsupportedOperationException, var676=$r8, var3416=$r9, var1713=$r11, var1597=java.lang.Object, var1028=$r10, var1885=$r12, var3655=$r13}
; {org.hibernate.sql.JoinFragment=var788, r1=var3118, r2=var906, null_type=var1565, r3=var1920, r0=var812, r4=var2469, org.hibernate.sql.JoinType=var3606, r5=var3161, r6=var3173, $i0=var1009, java.lang.UnsupportedOperationException=var1308, $r8=var676, $r9=var3416, $r11=var1713, java.lang.Object=var1597, $r10=var1028, $r12=var1885, $r13=var3655}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.hibernate.sql.JoinFragment;	r2 := @parameter0: java.lang.String;	r3 := @parameter1: java.lang.String;	r0 := @parameter2: java.lang.String[][];	r4 := @parameter3: java.lang.String[];	r5 := @parameter4: org.hibernate.sql.JoinType;	r6 := @parameter5: java.lang.String;	$i0 = lengthof r0;	if $i0 <= 1 goto $r7 = r0[0];	$r8 = new java.lang.UnsupportedOperationException;	$r9 = new java.lang.StringBuilder;	specialinvoke $r9.<java.lang.StringBuilder: void <init>()>();	$r11 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("The join fragment does not support multiple foreign key columns: ");	$r10 = virtualinvoke r1.<java.lang.Object: java.lang.Class getClass()>();	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r10);	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r8.<java.lang.UnsupportedOperationException: void <init>(java.lang.String)>($r13);	throw $r8
;block_num 2