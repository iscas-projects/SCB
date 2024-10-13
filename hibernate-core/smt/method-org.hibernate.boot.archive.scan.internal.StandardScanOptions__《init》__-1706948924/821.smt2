(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3974 0)
(declare-sort var2964 0)
(declare-sort var1881 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun <init>/-279557996 (var1881) void)
(declare-fun cast-from-var3974-to-var1881 (var3974) var1881)
(define-fun contains/1009244746 ((s String) (subs String)) Bool (str.contains s subs))
(define-fun cast-from-String-to-String ((arg String)) String arg)
(declare-fun detectHibernateMappingFiles/-1204266462 (var3974) Bool)
(declare-fun detectClassesInRoot/-1204266462 (var3974) Bool)
(declare-fun detectClassesInNonRoot/-1204266462 (var3974) Bool)
(declare-const null-var3974 var3974)
(declare-const null-String String)
(declare-const null-Bool Bool)
(declare-const var951 var3974) ; Statement: r0 := @this: org.hibernate.boot.archive.scan.internal.StandardScanOptions 
(assert (not (= var951 null-var3974)))
(declare-const var3063 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var3063 null-String)))
(declare-const var3145 Bool) ; Statement: z3 := @parameter1: boolean 
(assert (not (= var3145 null-Bool)))
(assert true)
;(assert (<init>/-279557996 (cast-from-var3974-to-var1881 var951))) ; Statement: specialinvoke r0.<java.lang.Object: void <init>()>() 

(declare-const var951!1 var3974)
 ; Statement: if r1 != null goto $z0 = virtualinvoke r1.<java.lang.String: boolean contains(java.lang.CharSequence)>("hbm") 
(assert (not (= var3063 null-String))) ; Cond: r1 != null 
(assert true)
(define-const var1018 Bool (contains/1009244746 var3063 (cast-from-String-to-String "hbm"))) ; Statement: $z0 = virtualinvoke r1.<java.lang.String: boolean contains(java.lang.CharSequence)>("hbm") 
(declare-const var951!2 var3974)
(assert (not (= var951!2 null-var3974)))
(assert (= (detectHibernateMappingFiles/-1204266462 var951!2) var1018)) ; Statement: r0.<org.hibernate.boot.archive.scan.internal.StandardScanOptions: boolean detectHibernateMappingFiles> = $z0 
(assert true)
(define-const var3327 Bool (contains/1009244746 var3063 (cast-from-String-to-String "class"))) ; Statement: $z1 = virtualinvoke r1.<java.lang.String: boolean contains(java.lang.CharSequence)>("class") 
(declare-const var951!3 var3974)
(assert (not (= var951!3 null-var3974)))
(assert (= (detectClassesInRoot/-1204266462 var951!3) var3327)) ; Statement: r0.<org.hibernate.boot.archive.scan.internal.StandardScanOptions: boolean detectClassesInRoot> = $z1 
(define-const var3665 Bool (detectClassesInRoot/-1204266462 var951!3)) ; Statement: $z2 = r0.<org.hibernate.boot.archive.scan.internal.StandardScanOptions: boolean detectClassesInRoot> 
(declare-const var951!4 var3974)
(assert (not (= var951!4 null-var3974)))
(assert (= (detectClassesInNonRoot/-1204266462 var951!4) var3665)) ; Statement: r0.<org.hibernate.boot.archive.scan.internal.StandardScanOptions: boolean detectClassesInNonRoot> = $z2 
(assert true) ; Non Conditional
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/-279557996=([java.lang.Object], void), cast-from-var3974-to-var1881=([org.hibernate.boot.archive.scan.internal.StandardScanOptions], java.lang.Object), contains/1009244746=([java.lang.String, java.lang.CharSequence], boolean), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), detectHibernateMappingFiles/-1204266462=([org.hibernate.boot.archive.scan.internal.StandardScanOptions], boolean), detectClassesInRoot/-1204266462=([org.hibernate.boot.archive.scan.internal.StandardScanOptions], boolean), detectClassesInNonRoot/-1204266462=([org.hibernate.boot.archive.scan.internal.StandardScanOptions], boolean)}
; {var3974=org.hibernate.boot.archive.scan.internal.StandardScanOptions, var951=r0, var3063=r1, var2964=null_type, var3145=z3, var1881=java.lang.Object, var1018=$z0, var3327=$z1, var3665=$z2}
; {org.hibernate.boot.archive.scan.internal.StandardScanOptions=var3974, r0=var951, r1=var3063, null_type=var2964, z3=var3145, java.lang.Object=var1881, $z0=var1018, $z1=var3327, $z2=var3665}
;seq <java.lang.String: boolean contains(java.lang.CharSequence)>;	<java.lang.String: boolean contains(java.lang.CharSequence)>
;cnt {"<java.lang.String: boolean contains(java.lang.CharSequence)>": 2}
;stmts r0 := @this: org.hibernate.boot.archive.scan.internal.StandardScanOptions;	r1 := @parameter0: java.lang.String;	z3 := @parameter1: boolean;	specialinvoke r0.<java.lang.Object: void <init>()>();	if r1 != null goto $z0 = virtualinvoke r1.<java.lang.String: boolean contains(java.lang.CharSequence)>("hbm");	$z0 = virtualinvoke r1.<java.lang.String: boolean contains(java.lang.CharSequence)>("hbm");	r0.<org.hibernate.boot.archive.scan.internal.StandardScanOptions: boolean detectHibernateMappingFiles> = $z0;	$z1 = virtualinvoke r1.<java.lang.String: boolean contains(java.lang.CharSequence)>("class");	r0.<org.hibernate.boot.archive.scan.internal.StandardScanOptions: boolean detectClassesInRoot> = $z1;	$z2 = r0.<org.hibernate.boot.archive.scan.internal.StandardScanOptions: boolean detectClassesInRoot>;	r0.<org.hibernate.boot.archive.scan.internal.StandardScanOptions: boolean detectClassesInNonRoot> = $z2;	return
;block_num 3