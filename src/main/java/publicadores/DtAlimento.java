/**
 * DtAlimento.java
 *
 * This file was auto-generated from WSDL
 * by the Apache Axis 1.4.1-SNAPSHOT Nov 07, 2023 (07:57:58 UTC) WSDL2Java emitter.
 */

package publicadores;

public class DtAlimento  extends publicadores.DtDonacion  implements java.io.Serializable {
    private java.lang.String descripcionProductos;

    private java.lang.Integer cantElementos;

    public DtAlimento() {
    }

    public DtAlimento(
           java.lang.Integer id,
           publicadores.LocalDateTime fechaIngresada,
           java.lang.String descripcionProductos,
           java.lang.Integer cantElementos) {
        super(
            id,
            fechaIngresada);
        this.descripcionProductos = descripcionProductos;
        this.cantElementos = cantElementos;
    }


    /**
     * Gets the descripcionProductos value for this DtAlimento.
     * 
     * @return descripcionProductos
     */
    public java.lang.String getDescripcionProductos() {
        return descripcionProductos;
    }


    /**
     * Sets the descripcionProductos value for this DtAlimento.
     * 
     * @param descripcionProductos
     */
    public void setDescripcionProductos(java.lang.String descripcionProductos) {
        this.descripcionProductos = descripcionProductos;
    }


    /**
     * Gets the cantElementos value for this DtAlimento.
     * 
     * @return cantElementos
     */
    public java.lang.Integer getCantElementos() {
        return cantElementos;
    }


    /**
     * Sets the cantElementos value for this DtAlimento.
     * 
     * @param cantElementos
     */
    public void setCantElementos(java.lang.Integer cantElementos) {
        this.cantElementos = cantElementos;
    }

    private java.lang.Object __equalsCalc = null;
    public synchronized boolean equals(java.lang.Object obj) {
        if (!(obj instanceof DtAlimento)) return false;
        DtAlimento other = (DtAlimento) obj;
        if (this == obj) return true;
        if (__equalsCalc != null) {
            return (__equalsCalc == obj);
        }
        __equalsCalc = obj;
        boolean _equals;
        _equals = super.equals(obj) && 
            ((this.descripcionProductos==null && other.getDescripcionProductos()==null) || 
             (this.descripcionProductos!=null &&
              this.descripcionProductos.equals(other.getDescripcionProductos()))) &&
            ((this.cantElementos==null && other.getCantElementos()==null) || 
             (this.cantElementos!=null &&
              this.cantElementos.equals(other.getCantElementos())));
        __equalsCalc = null;
        return _equals;
    }

    private boolean __hashCodeCalc = false;
    public synchronized int hashCode() {
        if (__hashCodeCalc) {
            return 0;
        }
        __hashCodeCalc = true;
        int _hashCode = super.hashCode();
        if (getDescripcionProductos() != null) {
            _hashCode += getDescripcionProductos().hashCode();
        }
        if (getCantElementos() != null) {
            _hashCode += getCantElementos().hashCode();
        }
        __hashCodeCalc = false;
        return _hashCode;
    }

    // Type metadata
    private static org.apache.axis.description.TypeDesc typeDesc =
        new org.apache.axis.description.TypeDesc(DtAlimento.class, true);

    static {
        typeDesc.setXmlType(new javax.xml.namespace.QName("http://publicadores/", "dtAlimento"));
        org.apache.axis.description.ElementDesc elemField = new org.apache.axis.description.ElementDesc();
        elemField.setFieldName("descripcionProductos");
        elemField.setXmlName(new javax.xml.namespace.QName("", "descripcionProductos"));
        elemField.setXmlType(new javax.xml.namespace.QName("http://www.w3.org/2001/XMLSchema", "string"));
        elemField.setMinOccurs(0);
        elemField.setNillable(false);
        typeDesc.addFieldDesc(elemField);
        elemField = new org.apache.axis.description.ElementDesc();
        elemField.setFieldName("cantElementos");
        elemField.setXmlName(new javax.xml.namespace.QName("", "cantElementos"));
        elemField.setXmlType(new javax.xml.namespace.QName("http://www.w3.org/2001/XMLSchema", "int"));
        elemField.setMinOccurs(0);
        elemField.setNillable(false);
        typeDesc.addFieldDesc(elemField);
    }

    /**
     * Return type metadata object
     */
    public static org.apache.axis.description.TypeDesc getTypeDesc() {
        return typeDesc;
    }

    /**
     * Get Custom Serializer
     */
    public static org.apache.axis.encoding.Serializer getSerializer(
           java.lang.String mechType, 
           java.lang.Class _javaType,  
           javax.xml.namespace.QName _xmlType) {
        return 
          new  org.apache.axis.encoding.ser.BeanSerializer(
            _javaType, _xmlType, typeDesc);
    }

    /**
     * Get Custom Deserializer
     */
    public static org.apache.axis.encoding.Deserializer getDeserializer(
           java.lang.String mechType, 
           java.lang.Class _javaType,  
           javax.xml.namespace.QName _xmlType) {
        return 
          new  org.apache.axis.encoding.ser.BeanDeserializer(
            _javaType, _xmlType, typeDesc);
    }

}
