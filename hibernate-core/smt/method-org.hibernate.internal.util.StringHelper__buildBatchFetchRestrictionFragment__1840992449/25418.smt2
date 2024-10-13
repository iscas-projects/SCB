(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1949 0)
(declare-sort var81 0)
(declare-sort var258 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getLength-Arr-String-1 ((Array Int String)) Int)
(declare-fun String-init () String)
(declare-fun var258_qualify/-1563731603 (String String) String)
(define-fun <init>/-1061048412 ((s String)) String s)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1166366385 (String Int) String)
(declare-const null-String String)
(declare-const null-__Array__Int__String__ (Array Int String))
(declare-const null-var81 var81)
(declare-const var3734 String) ; Statement: r7 := @parameter0: java.lang.String 
(assert (not (= var3734 null-String)))
(declare-const var2210 (Array Int String)) ; Statement: r0 := @parameter1: java.lang.String[] 
(assert (not (= var2210 null-__Array__Int__String__)))
(declare-const var3645 var81) ; Statement: r1 := @parameter2: org.hibernate.dialect.Dialect 
(assert (not (= var3645 null-var81)))
(define-const var3775 Int (getLength-Arr-String-1 var2210)) ; Statement: $i0 = lengthof r0 
 ; Statement: if $i0 != 1 goto $z0 = virtualinvoke r1.<org.hibernate.dialect.Dialect: boolean supportsRowValueConstructorSyntaxInInList()>() 
(assert (not (not (= var3775 1)))) ; Negate: Cond: $i0 != 1  
(define-const var2934 String String-init) ; Statement: $r10 = new java.lang.StringBuilder 
(define-const var2 String (select var2210 0)) ; Statement: $r11 = r0[0] 
(define-const var2413 String (var258_qualify/-1563731603 var3734 var2)) ; Statement: $r12 = staticinvoke <org.hibernate.internal.util.StringHelper: java.lang.String qualify(java.lang.String,java.lang.String)>(r7, $r11) 
(assert true)
;(assert (<init>/-1061048412 var2934 var2413)) ; Statement: specialinvoke $r10.<java.lang.StringBuilder: void <init>(java.lang.String)>($r12) 
(declare-const var2934!1 String)
(assert (= var2934!1 var2413))
(assert true)
(define-const var2824 String (append/672562846 var2934!1 " in (")) ; Statement: $r13 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" in (") 
(declare-const var2934!2 String)
(assert (= var2934!2 (str.++ var2934!1 " in (")))
(assert true)
(define-const var1780 String (append/672562846 var2824 "$$BATCH_ID_PLACEHOLDER$$")) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("$$BATCH_ID_PLACEHOLDER$$") 
(declare-const var2824!1 String)
(assert (= var2824!1 (str.++ var2824 "$$BATCH_ID_PLACEHOLDER$$")))
(assert true)
(define-const var3525 String (append/-1166366385 var1780 41)) ; Statement: $r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(41) 
(declare-const var1780!1 String)
(assert (str.prefixof var1780 var1780!1))
 ; Statement: return $r15 
(check-sat)
(get-model)
(get-unsat-core)
; {getLength-Arr-String-1=([java.lang.String[]], int), String-init=([], java.lang.StringBuilder), var258_qualify/-1563731603=([java.lang.String, java.lang.String], java.lang.String), <init>/-1061048412=([java.lang.StringBuilder, java.lang.String], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder)}
; {var3734=r7, var1949=null_type, var2210=r0, var81=org.hibernate.dialect.Dialect, var3645=r1, var3775=$i0, var2934=$r10, var2=$r11, var258=org.hibernate.internal.util.StringHelper, var2413=$r12, var2824=$r13, var1780=$r14, var3525=$r15}
; {r7=var3734, null_type=var1949, r0=var2210, org.hibernate.dialect.Dialect=var81, r1=var3645, $i0=var3775, $r10=var2934, $r11=var2, org.hibernate.internal.util.StringHelper=var258, $r12=var2413, $r13=var2824, $r14=var1780, $r15=var3525}
;seq <java.lang.StringBuilder: void <init>(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>
;cnt {"<java.lang.StringBuilder: void <init>(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1}
;stmts r7 := @parameter0: java.lang.String;	r0 := @parameter1: java.lang.String[];	r1 := @parameter2: org.hibernate.dialect.Dialect;	$i0 = lengthof r0;	if $i0 != 1 goto $z0 = virtualinvoke r1.<org.hibernate.dialect.Dialect: boolean supportsRowValueConstructorSyntaxInInList()>();	$r10 = new java.lang.StringBuilder;	$r11 = r0[0];	$r12 = staticinvoke <org.hibernate.internal.util.StringHelper: java.lang.String qualify(java.lang.String,java.lang.String)>(r7, $r11);	specialinvoke $r10.<java.lang.StringBuilder: void <init>(java.lang.String)>($r12);	$r13 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" in (");	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("$$BATCH_ID_PLACEHOLDER$$");	$r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(41);	return $r15
;block_num 2