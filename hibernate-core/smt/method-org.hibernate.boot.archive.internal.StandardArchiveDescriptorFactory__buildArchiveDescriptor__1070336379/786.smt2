(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var227 0)
(declare-sort var2817 0)
(declare-sort var1775 0)
(declare-sort var2524 0)
(declare-sort var1555 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getProtocol/70454678 (var2817) String)
(declare-fun var2524-init () var2524)
(declare-fun <init>/-1508752468 (var2524 var1555 var2817 String) void)
(declare-fun cast-from-var227-to-var1555 (var227) var1555)
(declare-const null-var227 var227)
(declare-const null-var2817 var2817)
(declare-const null-String String)
(declare-const var700 var227) ; Statement: r3 := @this: org.hibernate.boot.archive.internal.StandardArchiveDescriptorFactory 
(assert (not (= var700 null-var227)))
(declare-const var2934 var2817) ; Statement: r0 := @parameter0: java.net.URL 
(assert (not (= var2934 null-var2817)))
(declare-const var749 String) ; Statement: r5 := @parameter1: java.lang.String 
(assert (not (= var749 null-String)))
(assert true)
(define-const var2105 String (getProtocol/70454678 var2934)) ; Statement: r1 = virtualinvoke r0.<java.net.URL: java.lang.String getProtocol()>() 
(define-const var1810 String "jar") ; Statement: $r2 = "jar" 
(assert true)
(define-const var2816 Bool (= var1810 var2105)) ; Statement: $z0 = virtualinvoke $r2.<java.lang.String: boolean equals(java.lang.Object)>(r1) 
 ; Statement: if $z0 == 0 goto $z1 = staticinvoke <org.hibernate.internal.util.StringHelper: boolean isEmpty(java.lang.String)>(r1) 
(assert (not (= (ite var2816 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var59 var2524 var2524-init) ; Statement: $r11 = new org.hibernate.boot.archive.internal.JarProtocolArchiveDescriptor 
(assert true)
;(assert (<init>/-1508752468 var59 (cast-from-var227-to-var1555 var700) var2934 var749)) ; Statement: specialinvoke $r11.<org.hibernate.boot.archive.internal.JarProtocolArchiveDescriptor: void <init>(org.hibernate.boot.archive.spi.ArchiveDescriptorFactory,java.net.URL,java.lang.String)>(r3, r0, r5) 

(declare-const var59!1 var2524)
(declare-const var700!1 var227)
(declare-const var2934!1 var2817)
(declare-const var749!1 String)
 ; Statement: return $r11 
(check-sat)
(get-model)
(get-unsat-core)
; {getProtocol/70454678=([java.net.URL], java.lang.String), var2524-init=([], org.hibernate.boot.archive.internal.JarProtocolArchiveDescriptor), <init>/-1508752468=([org.hibernate.boot.archive.internal.JarProtocolArchiveDescriptor, org.hibernate.boot.archive.spi.ArchiveDescriptorFactory, java.net.URL, java.lang.String], void), cast-from-var227-to-var1555=([org.hibernate.boot.archive.internal.StandardArchiveDescriptorFactory], org.hibernate.boot.archive.spi.ArchiveDescriptorFactory)}
; {var227=org.hibernate.boot.archive.internal.StandardArchiveDescriptorFactory, var700=r3, var2817=java.net.URL, var2934=r0, var749=r5, var1775=null_type, var2105=r1, var1810=$r2, var2816=$z0, var2524=org.hibernate.boot.archive.internal.JarProtocolArchiveDescriptor, var59=$r11, var1555=org.hibernate.boot.archive.spi.ArchiveDescriptorFactory}
; {org.hibernate.boot.archive.internal.StandardArchiveDescriptorFactory=var227, r3=var700, java.net.URL=var2817, r0=var2934, r5=var749, null_type=var1775, r1=var2105, $r2=var1810, $z0=var2816, org.hibernate.boot.archive.internal.JarProtocolArchiveDescriptor=var2524, $r11=var59, org.hibernate.boot.archive.spi.ArchiveDescriptorFactory=var1555}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r3 := @this: org.hibernate.boot.archive.internal.StandardArchiveDescriptorFactory;	r0 := @parameter0: java.net.URL;	r5 := @parameter1: java.lang.String;	r1 = virtualinvoke r0.<java.net.URL: java.lang.String getProtocol()>();	$r2 = "jar";	$z0 = virtualinvoke $r2.<java.lang.String: boolean equals(java.lang.Object)>(r1);	if $z0 == 0 goto $z1 = staticinvoke <org.hibernate.internal.util.StringHelper: boolean isEmpty(java.lang.String)>(r1);	$r11 = new org.hibernate.boot.archive.internal.JarProtocolArchiveDescriptor;	specialinvoke $r11.<org.hibernate.boot.archive.internal.JarProtocolArchiveDescriptor: void <init>(org.hibernate.boot.archive.spi.ArchiveDescriptorFactory,java.net.URL,java.lang.String)>(r3, r0, r5);	return $r11
;block_num 2