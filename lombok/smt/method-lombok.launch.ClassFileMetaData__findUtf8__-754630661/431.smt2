(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1204 0)
(declare-sort var999 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun maxPoolSize/-1693839518 (var1204) Int)
(declare-fun utf8s/-1693839518 (var1204) (Array Int String))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-const null-var1204 var1204)
(declare-const null-String String)
(declare-const var107 var1204) ; Statement: r0 := @this: lombok.launch.ClassFileMetaData 
(assert (not (= var107 null-var1204)))
(declare-const var1088 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var1088 null-String)))
(define-const var934 Int 1) ; Statement: i1 = 1 
 ; Statement: goto [?= $i0 = r0.<lombok.launch.ClassFileMetaData: int maxPoolSize>] 
(assert true) ; Non Conditional
(define-const var1350 Int (maxPoolSize/-1693839518 var107)) ; Statement: $i0 = r0.<lombok.launch.ClassFileMetaData: int maxPoolSize> 
 ; Statement: if i1 < $i0 goto $r2 = r0.<lombok.launch.ClassFileMetaData: java.lang.String[] utf8s> 
(assert (< var934 var1350)) ; Cond: i1 < $i0 
(define-const var791 (Array Int String) (utf8s/-1693839518 var107)) ; Statement: $r2 = r0.<lombok.launch.ClassFileMetaData: java.lang.String[] utf8s> 
(define-const var2919 String (select var791 var934)) ; Statement: $r3 = $r2[i1] 
(assert true)
(define-const var1978 Bool (= var1088 var2919)) ; Statement: $z0 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>($r3) 
 ; Statement: if $z0 == 0 goto i1 = i1 + 1 
(assert (= (ite var1978 1 0) 0)) ; Cond: $z0 == 0 
(define-const var934!1 Int (+ var934 1)) ; Statement: i1 = i1 + 1 
(assert true) ; Non Conditional
(define-const var1350!1 Int (maxPoolSize/-1693839518 var107)) ; Statement: $i0 = r0.<lombok.launch.ClassFileMetaData: int maxPoolSize> 
 ; Statement: if i1 < $i0 goto $r2 = r0.<lombok.launch.ClassFileMetaData: java.lang.String[] utf8s> 
(assert (not (< var934!1 var1350!1))) ; Negate: Cond: i1 < $i0  
(define-const var2116 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i3 = (int) -1 
 ; Statement: return $i3 
(check-sat)
(get-model)
(get-unsat-core)
; {maxPoolSize/-1693839518=([lombok.launch.ClassFileMetaData], int), utf8s/-1693839518=([lombok.launch.ClassFileMetaData], java.lang.String[]), cast-from-Int-to-Int=([int], int)}
; {var1204=lombok.launch.ClassFileMetaData, var107=r0, var1088=r1, var999=null_type, var934=i1, var1350=$i0, var791=$r2, var2919=$r3, var1978=$z0, var2116=$i3}
; {lombok.launch.ClassFileMetaData=var1204, r0=var107, r1=var1088, null_type=var999, i1=var934, $i0=var1350, $r2=var791, $r3=var2919, $z0=var1978, $i3=var2116}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r0 := @this: lombok.launch.ClassFileMetaData;	r1 := @parameter0: java.lang.String;	i1 = 1;	goto [?= $i0 = r0.<lombok.launch.ClassFileMetaData: int maxPoolSize>];	$i0 = r0.<lombok.launch.ClassFileMetaData: int maxPoolSize>;	if i1 < $i0 goto $r2 = r0.<lombok.launch.ClassFileMetaData: java.lang.String[] utf8s>;	$r2 = r0.<lombok.launch.ClassFileMetaData: java.lang.String[] utf8s>;	$r3 = $r2[i1];	$z0 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>($r3);	if $z0 == 0 goto i1 = i1 + 1;	i1 = i1 + 1;	$i0 = r0.<lombok.launch.ClassFileMetaData: int maxPoolSize>;	if i1 < $i0 goto $r2 = r0.<lombok.launch.ClassFileMetaData: java.lang.String[] utf8s>;	$i3 = (int) -1;	return $i3
;block_num 6