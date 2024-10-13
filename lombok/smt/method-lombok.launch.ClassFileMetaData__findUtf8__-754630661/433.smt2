(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2308 0)
(declare-sort var3631 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun maxPoolSize/-1693839518 (var2308) Int)
(declare-fun utf8s/-1693839518 (var2308) (Array Int String))
(declare-const null-var2308 var2308)
(declare-const null-String String)
(declare-const var895 var2308) ; Statement: r0 := @this: lombok.launch.ClassFileMetaData 
(assert (not (= var895 null-var2308)))
(declare-const var399 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var399 null-String)))
(define-const var3548 Int 1) ; Statement: i1 = 1 
 ; Statement: goto [?= $i0 = r0.<lombok.launch.ClassFileMetaData: int maxPoolSize>] 
(assert true) ; Non Conditional
(define-const var1451 Int (maxPoolSize/-1693839518 var895)) ; Statement: $i0 = r0.<lombok.launch.ClassFileMetaData: int maxPoolSize> 
 ; Statement: if i1 < $i0 goto $r2 = r0.<lombok.launch.ClassFileMetaData: java.lang.String[] utf8s> 
(assert (< var3548 var1451)) ; Cond: i1 < $i0 
(define-const var730 (Array Int String) (utf8s/-1693839518 var895)) ; Statement: $r2 = r0.<lombok.launch.ClassFileMetaData: java.lang.String[] utf8s> 
(define-const var3306 String (select var730 var3548)) ; Statement: $r3 = $r2[i1] 
(assert true)
(define-const var391 Bool (= var399 var3306)) ; Statement: $z0 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>($r3) 
 ; Statement: if $z0 == 0 goto i1 = i1 + 1 
(assert (= (ite var391 1 0) 0)) ; Cond: $z0 == 0 
(define-const var3548!1 Int (+ var3548 1)) ; Statement: i1 = i1 + 1 
(assert true) ; Non Conditional
(define-const var1451!1 Int (maxPoolSize/-1693839518 var895)) ; Statement: $i0 = r0.<lombok.launch.ClassFileMetaData: int maxPoolSize> 
 ; Statement: if i1 < $i0 goto $r2 = r0.<lombok.launch.ClassFileMetaData: java.lang.String[] utf8s> 
(assert (< var3548!1 var1451!1)) ; Cond: i1 < $i0 
(define-const var730!1 (Array Int String) (utf8s/-1693839518 var895)) ; Statement: $r2 = r0.<lombok.launch.ClassFileMetaData: java.lang.String[] utf8s> 
(define-const var3306!1 String (select var730!1 var3548!1)) ; Statement: $r3 = $r2[i1] 
(assert true)
(define-const var391!1 Bool (= var399 var3306!1)) ; Statement: $z0 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>($r3) 
 ; Statement: if $z0 == 0 goto i1 = i1 + 1 
(assert (not (= (ite var391!1 1 0) 0))) ; Negate: Cond: $z0 == 0  
 ; Statement: return i1 
(check-sat)
(get-model)
(get-unsat-core)
; {maxPoolSize/-1693839518=([lombok.launch.ClassFileMetaData], int), utf8s/-1693839518=([lombok.launch.ClassFileMetaData], java.lang.String[])}
; {var2308=lombok.launch.ClassFileMetaData, var895=r0, var399=r1, var3631=null_type, var3548=i1, var1451=$i0, var730=$r2, var3306=$r3, var391=$z0}
; {lombok.launch.ClassFileMetaData=var2308, r0=var895, r1=var399, null_type=var3631, i1=var3548, $i0=var1451, $r2=var730, $r3=var3306, $z0=var391}
;seq <java.lang.String: boolean equals(java.lang.Object)>;	<java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 2}
;stmts r0 := @this: lombok.launch.ClassFileMetaData;	r1 := @parameter0: java.lang.String;	i1 = 1;	goto [?= $i0 = r0.<lombok.launch.ClassFileMetaData: int maxPoolSize>];	$i0 = r0.<lombok.launch.ClassFileMetaData: int maxPoolSize>;	if i1 < $i0 goto $r2 = r0.<lombok.launch.ClassFileMetaData: java.lang.String[] utf8s>;	$r2 = r0.<lombok.launch.ClassFileMetaData: java.lang.String[] utf8s>;	$r3 = $r2[i1];	$z0 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>($r3);	if $z0 == 0 goto i1 = i1 + 1;	i1 = i1 + 1;	$i0 = r0.<lombok.launch.ClassFileMetaData: int maxPoolSize>;	if i1 < $i0 goto $r2 = r0.<lombok.launch.ClassFileMetaData: java.lang.String[] utf8s>;	$r2 = r0.<lombok.launch.ClassFileMetaData: java.lang.String[] utf8s>;	$r3 = $r2[i1];	$z0 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>($r3);	if $z0 == 0 goto i1 = i1 + 1;	return i1
;block_num 7