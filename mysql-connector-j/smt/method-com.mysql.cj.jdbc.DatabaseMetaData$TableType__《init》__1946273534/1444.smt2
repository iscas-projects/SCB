(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2284 0)
(declare-sort var2167 0)
(declare-sort var1201 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun <init>/1180346878 (var1201 String Int) void)
(declare-fun cast-from-var2284-to-var1201 (var2284) var1201)
(declare-fun name/-948363821 (var2284) String)
(declare-fun getBytes/1068683673 (String) (Array Int Int))
(declare-fun nameAsBytes/-948363821 (var2284) (Array Int Int))
(declare-fun synonyms/-948363821 (var2284) (Array Int String))
(declare-const null-var2284 var2284)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const null-__Array__Int__String__ (Array Int String))
(declare-const var1630 var2284) ; Statement: r0 := @this: com.mysql.cj.jdbc.DatabaseMetaData$TableType 
(assert (not (= var1630 null-var2284)))
(declare-const var1871 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var1871 null-String)))
(declare-const var2236 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var2236 null-Int)))
(declare-const var2065 String) ; Statement: r2 := @parameter2: java.lang.String 
(assert (not (= var2065 null-String)))
(declare-const var3706 (Array Int String)) ; Statement: r4 := @parameter3: java.lang.String[] 
(assert (not (= var3706 null-__Array__Int__String__)))
(assert true)
;(assert (<init>/1180346878 (cast-from-var2284-to-var1201 var1630) var1871 var2236)) ; Statement: specialinvoke r0.<java.lang.Enum: void <init>(java.lang.String,int)>(r1, i0) 

(declare-const var1630!1 var2284)
(declare-const var1871!1 String)
(declare-const var2236!1 Int)
(declare-const var1630!2 var2284)
(assert (not (= var1630!2 null-var2284)))
(assert (= (name/-948363821 var1630!2) var2065)) ; Statement: r0.<com.mysql.cj.jdbc.DatabaseMetaData$TableType: java.lang.String name> = r2 
(assert true)
(define-const var649 (Array Int Int) (getBytes/1068683673 var2065)) ; Statement: $r3 = virtualinvoke r2.<java.lang.String: byte[] getBytes()>() 
(declare-const var1630!3 var2284)
(assert (not (= var1630!3 null-var2284)))
(assert (= (nameAsBytes/-948363821 var1630!3) var649)) ; Statement: r0.<com.mysql.cj.jdbc.DatabaseMetaData$TableType: byte[] nameAsBytes> = $r3 
(declare-const var1630!4 var2284)
(assert (not (= var1630!4 null-var2284)))
(assert (= (synonyms/-948363821 var1630!4) var3706)) ; Statement: r0.<com.mysql.cj.jdbc.DatabaseMetaData$TableType: java.lang.String[] synonyms> = r4 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/1180346878=([java.lang.Enum, java.lang.String, int], void), cast-from-var2284-to-var1201=([com.mysql.cj.jdbc.DatabaseMetaData$TableType], java.lang.Enum), name/-948363821=([com.mysql.cj.jdbc.DatabaseMetaData$TableType], java.lang.String), getBytes/1068683673=([java.lang.String], byte[]), nameAsBytes/-948363821=([com.mysql.cj.jdbc.DatabaseMetaData$TableType], byte[]), synonyms/-948363821=([com.mysql.cj.jdbc.DatabaseMetaData$TableType], java.lang.String[])}
; {var2284=com.mysql.cj.jdbc.DatabaseMetaData$TableType, var1630=r0, var1871=r1, var2167=null_type, var2236=i0, var2065=r2, var3706=r4, var1201=java.lang.Enum, var649=$r3}
; {com.mysql.cj.jdbc.DatabaseMetaData$TableType=var2284, r0=var1630, r1=var1871, null_type=var2167, i0=var2236, r2=var2065, r4=var3706, java.lang.Enum=var1201, $r3=var649}
;seq <java.lang.String: byte[] getBytes()>
;cnt {"<java.lang.String: byte[] getBytes()>": 1}
;stmts r0 := @this: com.mysql.cj.jdbc.DatabaseMetaData$TableType;	r1 := @parameter0: java.lang.String;	i0 := @parameter1: int;	r2 := @parameter2: java.lang.String;	r4 := @parameter3: java.lang.String[];	specialinvoke r0.<java.lang.Enum: void <init>(java.lang.String,int)>(r1, i0);	r0.<com.mysql.cj.jdbc.DatabaseMetaData$TableType: java.lang.String name> = r2;	$r3 = virtualinvoke r2.<java.lang.String: byte[] getBytes()>();	r0.<com.mysql.cj.jdbc.DatabaseMetaData$TableType: byte[] nameAsBytes> = $r3;	r0.<com.mysql.cj.jdbc.DatabaseMetaData$TableType: java.lang.String[] synonyms> = r4;	return
;block_num 1