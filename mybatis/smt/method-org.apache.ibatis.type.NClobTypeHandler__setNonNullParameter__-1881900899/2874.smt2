(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var93 0)
(declare-sort var384 0)
(declare-sort var3134 0)
(declare-sort var3951 0)
(declare-sort var148 0)
(declare-sort var3376 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var148-init () var148)
(declare-fun <init>/814598262 (var148 String) void)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun var384_setCharacterStream/1069884849 (var384 Int var3376 Int) void)
(declare-fun cast-from-var148-to-var3376 (var148) var3376)
(declare-const null-var93 var93)
(declare-const null-var384 var384)
(declare-const null-Int Int)
(declare-const null-String String)
(declare-const null-var3951 var3951)
(declare-const var198 var93) ; Statement: r3 := @this: org.apache.ibatis.type.NClobTypeHandler 
(assert (not (= var198 null-var93)))
(declare-const var1638 var384) ; Statement: r2 := @parameter0: java.sql.PreparedStatement 
(assert (not (= var1638 null-var384)))
(declare-const var3579 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var3579 null-Int)))
(declare-const var1451 String) ; Statement: r1 := @parameter2: java.lang.String 
(assert (not (= var1451 null-String)))
(declare-const var2415 var3951) ; Statement: r4 := @parameter3: org.apache.ibatis.type.JdbcType 
(assert (not (= var2415 null-var3951)))
(define-const var2153 var148 var148-init) ; Statement: $r0 = new java.io.StringReader 
(assert true)
;(assert (<init>/814598262 var2153 var1451)) ; Statement: specialinvoke $r0.<java.io.StringReader: void <init>(java.lang.String)>(r1) 

(declare-const var2153!1 var148)
(declare-const var1451!1 String)
(assert true)
(define-const var2000 Int (length/-134980193 var1451!1)) ; Statement: $i1 = virtualinvoke r1.<java.lang.String: int length()>() 
;(assert (var384_setCharacterStream/1069884849 var1638 var3579 (cast-from-var148-to-var3376 var2153!1) var2000)) ; Statement: interfaceinvoke r2.<java.sql.PreparedStatement: void setCharacterStream(int,java.io.Reader,int)>(i0, $r0, $i1) 

(declare-const var1638!1 var384)
(declare-const var3579!1 Int)
(declare-const var2153!2 var148)
(declare-const var2000!1 Int)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {var148-init=([], java.io.StringReader), <init>/814598262=([java.io.StringReader, java.lang.String], void), length/-134980193=([java.lang.String], int), var384_setCharacterStream/1069884849=([java.sql.PreparedStatement, int, java.io.Reader, int], void), cast-from-var148-to-var3376=([java.io.StringReader], java.io.Reader)}
; {var93=org.apache.ibatis.type.NClobTypeHandler, var198=r3, var384=java.sql.PreparedStatement, var1638=r2, var3579=i0, var1451=r1, var3134=null_type, var3951=org.apache.ibatis.type.JdbcType, var2415=r4, var148=java.io.StringReader, var2153=$r0, var2000=$i1, var3376=java.io.Reader}
; {org.apache.ibatis.type.NClobTypeHandler=var93, r3=var198, java.sql.PreparedStatement=var384, r2=var1638, i0=var3579, r1=var1451, null_type=var3134, org.apache.ibatis.type.JdbcType=var3951, r4=var2415, java.io.StringReader=var148, $r0=var2153, $i1=var2000, java.io.Reader=var3376}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r3 := @this: org.apache.ibatis.type.NClobTypeHandler;	r2 := @parameter0: java.sql.PreparedStatement;	i0 := @parameter1: int;	r1 := @parameter2: java.lang.String;	r4 := @parameter3: org.apache.ibatis.type.JdbcType;	$r0 = new java.io.StringReader;	specialinvoke $r0.<java.io.StringReader: void <init>(java.lang.String)>(r1);	$i1 = virtualinvoke r1.<java.lang.String: int length()>();	interfaceinvoke r2.<java.sql.PreparedStatement: void setCharacterStream(int,java.io.Reader,int)>(i0, $r0, $i1);	return
;block_num 1