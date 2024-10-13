(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3132 0)
(declare-sort var1986 0)
(declare-sort var2280 0)
(declare-sort var765 0)
(declare-sort var83 0)
(declare-sort var3397 0)
(declare-sort var929 0)
(declare-sort var1580 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun arr-__Array__Int__Int__-init () (Array Int (Array Int Int)))
(declare-fun var2280_getBytes/-1422474900 (var2280 Int) (Array Int Int))
(declare-fun s2b/-450202684 (var3132 String) (Array Int Int))
(declare-fun var2280_getString/-720707741 (var2280 Int) String)
(declare-fun var83-init () var83)
(declare-fun <init>/1909349671 (var83 String String) void)
(declare-fun String-init () String)
(define-fun <init>/-1061048412 ((s String)) String s)
(declare-fun hasMoreTokens/711654492 (var83) Bool)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var3397-init () var3397)
(declare-fun getExceptionInterceptor/-1244810802 (var3132) var929)
(declare-fun <init>/-2095191794 (var3397 (Array Int (Array Int Int)) var929) void)
(declare-fun add/1770215592 (var1986 var1580) Bool)
(declare-fun cast-from-var3397-to-var1580 (var3397) var1580)
(declare-const null-var3132 var3132)
(declare-const null-var1986 var1986)
(declare-const null-var2280 var2280)
(declare-const null-String String)
(declare-const null-__Array__Int____Array__Int__Int____ (Array Int (Array Int Int)))
(declare-const var3212 var3132) ; Statement: r3 := @this: com.mysql.cj.jdbc.DatabaseMetaData 
(assert (not (= var3212 null-var3132)))
(declare-const var1427 var1986) ; Statement: r10 := @parameter0: java.util.ArrayList 
(assert (not (= var1427 null-var1986)))
(declare-const var1720 var2280) ; Statement: r1 := @parameter1: java.sql.ResultSet 
(assert (not (= var1720 null-var2280)))
(declare-const var1818 String) ; Statement: r14 := @parameter2: java.lang.String 
(assert (not (= var1818 null-String)))
(define-const var463 (Array Int (Array Int Int)) arr-__Array__Int__Int__-init) ; Statement: r0 = newarray (byte[])[3] 
(define-const var2926 (Array Int Int) (var2280_getBytes/-1422474900 var1720 1)) ; Statement: $r2 = interfaceinvoke r1.<java.sql.ResultSet: byte[] getBytes(int)>(1) 
(declare-const var463!1 (Array Int (Array Int Int)))
(assert (not (= var463!1 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var463!1 0) var2926)) ; Statement: r0[0] = $r2 
(assert true)
(define-const var973 (Array Int Int) (s2b/-450202684 var3212 "SUPPORTS_FK")) ; Statement: $r4 = virtualinvoke r3.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>("SUPPORTS_FK") 
(declare-const var463!2 (Array Int (Array Int Int)))
(assert (not (= var463!2 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var463!2 1) var973)) ; Statement: r0[1] = $r4 
(define-const var558 String (var2280_getString/-720707741 var1720 2)) ; Statement: r5 = interfaceinvoke r1.<java.sql.ResultSet: java.lang.String getString(int)>(2) 
(define-const var129 var83 var83-init) ; Statement: $r43 = new java.util.StringTokenizer 
(assert true)
;(assert (<init>/1909349671 var129 var558 "\n")) ; Statement: specialinvoke $r43.<java.util.StringTokenizer: void <init>(java.lang.String,java.lang.String)>(r5, "\n") 

(declare-const var129!1 var83)
(declare-const var558!1 String)
(declare-const var3845 String)
(define-const var67 String String-init) ; Statement: $r44 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/-1061048412 var67 "comment; ")) ; Statement: specialinvoke $r44.<java.lang.StringBuilder: void <init>(java.lang.String)>("comment; ") 
(declare-const var67!1 String)
(assert (= var67!1 "comment; "))
(define-const var2600 Bool (ite (= 1 1) true false)) ; Statement: z4 = 1 
(assert true) ; Non Conditional
(assert true)
(define-const var3047 Bool (hasMoreTokens/711654492 var129!1)) ; Statement: $z0 = virtualinvoke $r43.<java.util.StringTokenizer: boolean hasMoreTokens()>() 
 ; Statement: if $z0 == 0 goto $r8 = virtualinvoke $r44.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (= (ite var3047 1 0) 0)) ; Cond: $z0 == 0 
(assert true)
(define-const var1624 String (toString/-2075883882 var67!1)) ; Statement: $r8 = virtualinvoke $r44.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
(define-const var914 (Array Int Int) (s2b/-450202684 var3212 var1624)) ; Statement: $r9 = virtualinvoke r3.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r8) 
(declare-const var463!3 (Array Int (Array Int Int)))
(assert (not (= var463!3 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var463!3 2) var914)) ; Statement: r0[2] = $r9 
(define-const var1645 var3397 var3397-init) ; Statement: $r45 = new com.mysql.cj.protocol.a.result.ByteArrayRow 
(assert true)
(define-const var2144 var929 (getExceptionInterceptor/-1244810802 var3212)) ; Statement: $r12 = virtualinvoke r3.<com.mysql.cj.jdbc.DatabaseMetaData: com.mysql.cj.exceptions.ExceptionInterceptor getExceptionInterceptor()>() 
(assert true)
;(assert (<init>/-2095191794 var1645 var463!3 var2144)) ; Statement: specialinvoke $r45.<com.mysql.cj.protocol.a.result.ByteArrayRow: void <init>(byte[][],com.mysql.cj.exceptions.ExceptionInterceptor)>(r0, $r12) 

(declare-const var1645!1 var3397)
(declare-const var463!4 (Array Int (Array Int Int)))
(declare-const var2144!1 var929)
(assert true)
;(assert (add/1770215592 var1427 (cast-from-var3397-to-var1580 var1645!1))) ; Statement: virtualinvoke r10.<java.util.ArrayList: boolean add(java.lang.Object)>($r45) 

(declare-const var1427!1 var1986)
(declare-const var1645!2 var3397)
 ; Statement: return r10 
(check-sat)
(get-model)
(get-unsat-core)
; {arr-__Array__Int__Int__-init=([], byte[][]), var2280_getBytes/-1422474900=([java.sql.ResultSet, int], byte[]), s2b/-450202684=([com.mysql.cj.jdbc.DatabaseMetaData, java.lang.String], byte[]), var2280_getString/-720707741=([java.sql.ResultSet, int], java.lang.String), var83-init=([], java.util.StringTokenizer), <init>/1909349671=([java.util.StringTokenizer, java.lang.String, java.lang.String], void), String-init=([], java.lang.StringBuilder), <init>/-1061048412=([java.lang.StringBuilder, java.lang.String], void), hasMoreTokens/711654492=([java.util.StringTokenizer], boolean), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var3397-init=([], com.mysql.cj.protocol.a.result.ByteArrayRow), getExceptionInterceptor/-1244810802=([com.mysql.cj.jdbc.DatabaseMetaData], com.mysql.cj.exceptions.ExceptionInterceptor), <init>/-2095191794=([com.mysql.cj.protocol.a.result.ByteArrayRow, byte[][], com.mysql.cj.exceptions.ExceptionInterceptor], void), add/1770215592=([java.util.ArrayList, java.lang.Object], boolean), cast-from-var3397-to-var1580=([com.mysql.cj.protocol.a.result.ByteArrayRow], java.lang.Object)}
; {var3132=com.mysql.cj.jdbc.DatabaseMetaData, var3212=r3, var1986=java.util.ArrayList, var1427=r10, var2280=java.sql.ResultSet, var1720=r1, var1818=r14, var765=null_type, var463=r0, var2926=$r2, var973=$r4, var558=r5, var83=java.util.StringTokenizer, var129=$r43, var3845="\n", var67=$r44, var2600=z4, var3047=$z0, var1624=$r8, var914=$r9, var3397=com.mysql.cj.protocol.a.result.ByteArrayRow, var1645=$r45, var929=com.mysql.cj.exceptions.ExceptionInterceptor, var2144=$r12, var1580=java.lang.Object}
; {com.mysql.cj.jdbc.DatabaseMetaData=var3132, r3=var3212, java.util.ArrayList=var1986, r10=var1427, java.sql.ResultSet=var2280, r1=var1720, r14=var1818, null_type=var765, r0=var463, $r2=var2926, $r4=var973, r5=var558, java.util.StringTokenizer=var83, $r43=var129, "\n"=var3845, $r44=var67, z4=var2600, $z0=var3047, $r8=var1624, $r9=var914, com.mysql.cj.protocol.a.result.ByteArrayRow=var3397, $r45=var1645, com.mysql.cj.exceptions.ExceptionInterceptor=var929, $r12=var2144, java.lang.Object=var1580}
;seq <java.lang.StringBuilder: void <init>(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r3 := @this: com.mysql.cj.jdbc.DatabaseMetaData;	r10 := @parameter0: java.util.ArrayList;	r1 := @parameter1: java.sql.ResultSet;	r14 := @parameter2: java.lang.String;	r0 = newarray (byte[])[3];	$r2 = interfaceinvoke r1.<java.sql.ResultSet: byte[] getBytes(int)>(1);	r0[0] = $r2;	$r4 = virtualinvoke r3.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>("SUPPORTS_FK");	r0[1] = $r4;	r5 = interfaceinvoke r1.<java.sql.ResultSet: java.lang.String getString(int)>(2);	$r43 = new java.util.StringTokenizer;	specialinvoke $r43.<java.util.StringTokenizer: void <init>(java.lang.String,java.lang.String)>(r5, "\n");	$r44 = new java.lang.StringBuilder;	specialinvoke $r44.<java.lang.StringBuilder: void <init>(java.lang.String)>("comment; ");	z4 = 1;	$z0 = virtualinvoke $r43.<java.util.StringTokenizer: boolean hasMoreTokens()>();	if $z0 == 0 goto $r8 = virtualinvoke $r44.<java.lang.StringBuilder: java.lang.String toString()>();	$r8 = virtualinvoke $r44.<java.lang.StringBuilder: java.lang.String toString()>();	$r9 = virtualinvoke r3.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r8);	r0[2] = $r9;	$r45 = new com.mysql.cj.protocol.a.result.ByteArrayRow;	$r12 = virtualinvoke r3.<com.mysql.cj.jdbc.DatabaseMetaData: com.mysql.cj.exceptions.ExceptionInterceptor getExceptionInterceptor()>();	specialinvoke $r45.<com.mysql.cj.protocol.a.result.ByteArrayRow: void <init>(byte[][],com.mysql.cj.exceptions.ExceptionInterceptor)>(r0, $r12);	virtualinvoke r10.<java.util.ArrayList: boolean add(java.lang.Object)>($r45);	return r10
;block_num 3