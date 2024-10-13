(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2726 0)
(declare-sort var1456 0)
(declare-sort var393 0)
(declare-sort var1141 0)
(declare-sort var2919 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun javaEncodingUcToCharsetName/-1763798038 (var2726) var1141)
(declare-fun var2919_getStaticMysqlCharsetForJavaEncoding/1510112588 (String var393) String)
(declare-const null-var2726 var2726)
(declare-const null-String String)
(declare-const null-var393 var393)
(declare-const null-var1141 var1141)
(declare-const var3144 var2726) ; Statement: r0 := @this: com.mysql.cj.NativeCharsetSettings 
(assert (not (= var3144 null-var2726)))
(declare-const var60 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var60 null-String)))
(declare-const var3907 var393) ; Statement: r3 := @parameter1: com.mysql.cj.ServerVersion 
(assert (not (= var3907 null-var393)))
(define-const var199 var1141 (javaEncodingUcToCharsetName/-1763798038 var3144)) ; Statement: $r1 = r0.<com.mysql.cj.NativeCharsetSettings: java.util.Map javaEncodingUcToCharsetName> 
 ; Statement: if $r1 == null goto r9 = staticinvoke <com.mysql.cj.NativeCharsetSettings: java.lang.String getStaticMysqlCharsetForJavaEncoding(java.lang.String,com.mysql.cj.ServerVersion)>(r2, r3) 
(assert (= var199 null-var1141)) ; Cond: $r1 == null 
(define-const var788 String (var2919_getStaticMysqlCharsetForJavaEncoding/1510112588 var60 var3907)) ; Statement: r9 = staticinvoke <com.mysql.cj.NativeCharsetSettings: java.lang.String getStaticMysqlCharsetForJavaEncoding(java.lang.String,com.mysql.cj.ServerVersion)>(r2, r3) 
(assert true) ; Non Conditional
 ; Statement: return r9 
(check-sat)
(get-model)
(get-unsat-core)
; {javaEncodingUcToCharsetName/-1763798038=([com.mysql.cj.NativeCharsetSettings], java.util.Map), var2919_getStaticMysqlCharsetForJavaEncoding/1510112588=([java.lang.String, com.mysql.cj.ServerVersion], java.lang.String)}
; {var2726=com.mysql.cj.NativeCharsetSettings, var3144=r0, var60=r2, var1456=null_type, var393=com.mysql.cj.ServerVersion, var3907=r3, var1141=java.util.Map, var199=$r1, var2919=com.mysql.cj.CharsetMapping, var788=r9}
; {com.mysql.cj.NativeCharsetSettings=var2726, r0=var3144, r2=var60, null_type=var1456, com.mysql.cj.ServerVersion=var393, r3=var3907, java.util.Map=var1141, $r1=var199, com.mysql.cj.CharsetMapping=var2919, r9=var788}
;seq 
;cnt {}
;stmts r0 := @this: com.mysql.cj.NativeCharsetSettings;	r2 := @parameter0: java.lang.String;	r3 := @parameter1: com.mysql.cj.ServerVersion;	$r1 = r0.<com.mysql.cj.NativeCharsetSettings: java.util.Map javaEncodingUcToCharsetName>;	if $r1 == null goto r9 = staticinvoke <com.mysql.cj.NativeCharsetSettings: java.lang.String getStaticMysqlCharsetForJavaEncoding(java.lang.String,com.mysql.cj.ServerVersion)>(r2, r3);	r9 = staticinvoke <com.mysql.cj.NativeCharsetSettings: java.lang.String getStaticMysqlCharsetForJavaEncoding(java.lang.String,com.mysql.cj.ServerVersion)>(r2, r3);	return r9
;block_num 3