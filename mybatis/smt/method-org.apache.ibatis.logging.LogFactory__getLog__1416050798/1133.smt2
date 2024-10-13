(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var86 0)
(declare-sort var146 0)
(declare-sort var3868 0)
(declare-sort var609 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3868-init () var3868)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var609) String)
(declare-fun cast-from-var146-to-var609 (var146) var609)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-258103422 (var3868 String var146) void)
(declare-const null-String String)
(declare-const null-var146 var146)
(declare-const var3769 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var3769 null-String)))
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var3773 var146) ; Statement: $r5 := @caughtexception 
(assert (not (= var3773 null-var146)))
(define-const var251 var3868 var3868-init) ; Statement: $r6 = new org.apache.ibatis.logging.LogException 
(define-const var917 String String-init) ; Statement: $r7 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var917)) ; Statement: specialinvoke $r7.<java.lang.StringBuilder: void <init>()>() 
(declare-const var917!1 String)
(assert (= var917!1 ""))
(assert true)
(define-const var167 String (append/672562846 var917!1 "Error creating logger for logger ")) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Error creating logger for logger ") 
(declare-const var917!2 String)
(assert (= var917!2 (str.++ var917!1 "Error creating logger for logger ")))
(assert true)
(define-const var2422 String (append/672562846 var167 var3769)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var167!1 String)
(assert (= var167!1 (str.++ var167 var3769)))
(assert true)
(define-const var260 String (append/672562846 var2422 ".  Cause: ")) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(".  Cause: ") 
(declare-const var2422!1 String)
(assert (= var2422!1 (str.++ var2422 ".  Cause: ")))
(assert true)
(define-const var3307 String (append/-1031950772 var260 (cast-from-var146-to-var609 var3773))) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r5) 
(declare-const var260!1 String)
(assert (str.prefixof var260 var260!1))
(assert true)
(define-const var3483 String (toString/-2075883882 var3307)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-258103422 var251 var3483 var3773)) ; Statement: specialinvoke $r6.<org.apache.ibatis.logging.LogException: void <init>(java.lang.String,java.lang.Throwable)>($r12, $r5) 

(declare-const var251!1 var3868)
(declare-const var3483!1 String)
(declare-const var3773!1 var146)
 ; Statement: throw $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {var3868-init=([], org.apache.ibatis.logging.LogException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var146-to-var609=([java.lang.Throwable], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-258103422=([org.apache.ibatis.logging.LogException, java.lang.String, java.lang.Throwable], void)}
; {var3769=r1, var86=null_type, var146=java.lang.Throwable, var3773=$r5, var3868=org.apache.ibatis.logging.LogException, var251=$r6, var917=$r7, var167=$r8, var2422=$r9, var260=$r10, var609=java.lang.Object, var3307=$r11, var3483=$r12}
; {r1=var3769, null_type=var86, java.lang.Throwable=var146, $r5=var3773, org.apache.ibatis.logging.LogException=var3868, $r6=var251, $r7=var917, $r8=var167, $r9=var2422, $r10=var260, java.lang.Object=var609, $r11=var3307, $r12=var3483}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @parameter0: java.lang.String;	$r5 := @caughtexception;	$r6 = new org.apache.ibatis.logging.LogException;	$r7 = new java.lang.StringBuilder;	specialinvoke $r7.<java.lang.StringBuilder: void <init>()>();	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Error creating logger for logger ");	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(".  Cause: ");	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r5);	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r6.<org.apache.ibatis.logging.LogException: void <init>(java.lang.String,java.lang.Throwable)>($r12, $r5);	throw $r6
;block_num 2