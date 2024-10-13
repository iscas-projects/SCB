(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var14 0)
(declare-sort var391 0)
(declare-sort var3640 0)
(declare-sort var2147 0)
(declare-sort var942 0)
(declare-sort var3334 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var942-init () var942)
(declare-fun <init>/814598262 (var942 String) void)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun var391_setCharacterStream/1069884849 (var391 Int var3334 Int) void)
(declare-fun cast-from-var942-to-var3334 (var942) var3334)
(declare-const null-var14 var14)
(declare-const null-var391 var391)
(declare-const null-Int Int)
(declare-const null-String String)
(declare-const null-var2147 var2147)
(declare-const var3750 var14) ; Statement: r3 := @this: org.apache.ibatis.type.ClobTypeHandler 
(assert (not (= var3750 null-var14)))
(declare-const var429 var391) ; Statement: r2 := @parameter0: java.sql.PreparedStatement 
(assert (not (= var429 null-var391)))
(declare-const var2698 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var2698 null-Int)))
(declare-const var3438 String) ; Statement: r1 := @parameter2: java.lang.String 
(assert (not (= var3438 null-String)))
(declare-const var1206 var2147) ; Statement: r4 := @parameter3: org.apache.ibatis.type.JdbcType 
(assert (not (= var1206 null-var2147)))
(define-const var2771 var942 var942-init) ; Statement: $r0 = new java.io.StringReader 
(assert true)
;(assert (<init>/814598262 var2771 var3438)) ; Statement: specialinvoke $r0.<java.io.StringReader: void <init>(java.lang.String)>(r1) 

(declare-const var2771!1 var942)
(declare-const var3438!1 String)
(assert true)
(define-const var3559 Int (length/-134980193 var3438!1)) ; Statement: $i1 = virtualinvoke r1.<java.lang.String: int length()>() 
;(assert (var391_setCharacterStream/1069884849 var429 var2698 (cast-from-var942-to-var3334 var2771!1) var3559)) ; Statement: interfaceinvoke r2.<java.sql.PreparedStatement: void setCharacterStream(int,java.io.Reader,int)>(i0, $r0, $i1) 

(declare-const var429!1 var391)
(declare-const var2698!1 Int)
(declare-const var2771!2 var942)
(declare-const var3559!1 Int)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {var942-init=([], java.io.StringReader), <init>/814598262=([java.io.StringReader, java.lang.String], void), length/-134980193=([java.lang.String], int), var391_setCharacterStream/1069884849=([java.sql.PreparedStatement, int, java.io.Reader, int], void), cast-from-var942-to-var3334=([java.io.StringReader], java.io.Reader)}
; {var14=org.apache.ibatis.type.ClobTypeHandler, var3750=r3, var391=java.sql.PreparedStatement, var429=r2, var2698=i0, var3438=r1, var3640=null_type, var2147=org.apache.ibatis.type.JdbcType, var1206=r4, var942=java.io.StringReader, var2771=$r0, var3559=$i1, var3334=java.io.Reader}
; {org.apache.ibatis.type.ClobTypeHandler=var14, r3=var3750, java.sql.PreparedStatement=var391, r2=var429, i0=var2698, r1=var3438, null_type=var3640, org.apache.ibatis.type.JdbcType=var2147, r4=var1206, java.io.StringReader=var942, $r0=var2771, $i1=var3559, java.io.Reader=var3334}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r3 := @this: org.apache.ibatis.type.ClobTypeHandler;	r2 := @parameter0: java.sql.PreparedStatement;	i0 := @parameter1: int;	r1 := @parameter2: java.lang.String;	r4 := @parameter3: org.apache.ibatis.type.JdbcType;	$r0 = new java.io.StringReader;	specialinvoke $r0.<java.io.StringReader: void <init>(java.lang.String)>(r1);	$i1 = virtualinvoke r1.<java.lang.String: int length()>();	interfaceinvoke r2.<java.sql.PreparedStatement: void setCharacterStream(int,java.io.Reader,int)>(i0, $r0, $i1);	return
;block_num 1