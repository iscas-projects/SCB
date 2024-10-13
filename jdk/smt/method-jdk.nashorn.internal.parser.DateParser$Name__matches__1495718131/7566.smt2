(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2564 0)
(declare-sort var937 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun name/-1281701860 (var2564) String)
(declare-fun regionMatches/-1964120983 (String Bool Int String Int Int) Bool)
(declare-const null-var2564 var2564)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const var1965 var2564) ; Statement: r0 := @this: jdk.nashorn.internal.parser.DateParser$Name 
(assert (not (= var1965 null-var2564)))
(declare-const var1948 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var1948 null-String)))
(declare-const var3196 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var3196 null-Int)))
(declare-const var1583 Int) ; Statement: i1 := @parameter2: int 
(assert (not (= var1583 null-Int)))
(define-const var867 String (name/-1281701860 var1965)) ; Statement: $r2 = r0.<jdk.nashorn.internal.parser.DateParser$Name: java.lang.String name> 
(assert true)
(define-const var475 Bool (regionMatches/-1964120983 var867 (ite (= 1 1) true false) 0 var1948 var3196 var1583)) ; Statement: $z0 = virtualinvoke $r2.<java.lang.String: boolean regionMatches(boolean,int,java.lang.String,int,int)>(1, 0, r1, i0, i1) 
 ; Statement: return $z0 
(check-sat)
(get-model)
(get-unsat-core)
; {name/-1281701860=([jdk.nashorn.internal.parser.DateParser$Name], java.lang.String), regionMatches/-1964120983=([java.lang.String, boolean, int, java.lang.String, int, int], boolean)}
; {var2564=jdk.nashorn.internal.parser.DateParser$Name, var1965=r0, var1948=r1, var937=null_type, var3196=i0, var1583=i1, var867=$r2, var475=$z0}
; {jdk.nashorn.internal.parser.DateParser$Name=var2564, r0=var1965, r1=var1948, null_type=var937, i0=var3196, i1=var1583, $r2=var867, $z0=var475}
;seq <java.lang.String: boolean regionMatches(boolean,int,java.lang.String,int,int)>
;cnt {"<java.lang.String: boolean regionMatches(boolean,int,java.lang.String,int,int)>": 1}
;stmts r0 := @this: jdk.nashorn.internal.parser.DateParser$Name;	r1 := @parameter0: java.lang.String;	i0 := @parameter1: int;	i1 := @parameter2: int;	$r2 = r0.<jdk.nashorn.internal.parser.DateParser$Name: java.lang.String name>;	$z0 = virtualinvoke $r2.<java.lang.String: boolean regionMatches(boolean,int,java.lang.String,int,int)>(1, 0, r1, i0, i1);	return $z0
;block_num 1