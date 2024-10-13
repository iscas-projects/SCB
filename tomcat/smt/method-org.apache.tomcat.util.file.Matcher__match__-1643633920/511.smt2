(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1022 0)
(declare-sort var2133 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun toCharArray/415275702 (String) (Array Int Int))
(declare-fun var2133_match/572894867 (String (Array Int Int) Bool) Bool)
(declare-const null-String String)
(declare-const null-Bool Bool)
(declare-const var3267 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var3267 null-String)))
(declare-const var702 String) ; Statement: r1 := @parameter1: java.lang.String 
(assert (not (= var702 null-String)))
(declare-const var285 Bool) ; Statement: z0 := @parameter2: boolean 
(assert (not (= var285 null-Bool)))
(assert true)
(define-const var3388 (Array Int Int) (toCharArray/415275702 var702)) ; Statement: $r2 = virtualinvoke r1.<java.lang.String: char[] toCharArray()>() 
(define-const var2206 Bool (var2133_match/572894867 var3267 var3388 var285)) ; Statement: $z1 = staticinvoke <org.apache.tomcat.util.file.Matcher: boolean match(java.lang.String,char[],boolean)>(r0, $r2, z0) 
 ; Statement: return $z1 
(check-sat)
(get-model)
(get-unsat-core)
; {toCharArray/415275702=([java.lang.String], char[]), var2133_match/572894867=([java.lang.String, char[], boolean], boolean)}
; {var3267=r0, var1022=null_type, var702=r1, var285=z0, var3388=$r2, var2133=org.apache.tomcat.util.file.Matcher, var2206=$z1}
; {r0=var3267, null_type=var1022, r1=var702, z0=var285, $r2=var3388, org.apache.tomcat.util.file.Matcher=var2133, $z1=var2206}
;seq <java.lang.String: char[] toCharArray()>
;cnt {"<java.lang.String: char[] toCharArray()>": 1}
;stmts r0 := @parameter0: java.lang.String;	r1 := @parameter1: java.lang.String;	z0 := @parameter2: boolean;	$r2 = virtualinvoke r1.<java.lang.String: char[] toCharArray()>();	$z1 = staticinvoke <org.apache.tomcat.util.file.Matcher: boolean match(java.lang.String,char[],boolean)>(r0, $r2, z0);	return $z1
;block_num 1