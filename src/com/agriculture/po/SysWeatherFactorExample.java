package com.agriculture.po;

import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.List;

public class SysWeatherFactorExample {
    protected String orderByClause;

    protected boolean distinct;

    protected List<Criteria> oredCriteria;

    public SysWeatherFactorExample() {
        oredCriteria = new ArrayList<Criteria>();
    }

    public void setOrderByClause(String orderByClause) {
        this.orderByClause = orderByClause;
    }

    public String getOrderByClause() {
        return orderByClause;
    }

    public void setDistinct(boolean distinct) {
        this.distinct = distinct;
    }

    public boolean isDistinct() {
        return distinct;
    }

    public List<Criteria> getOredCriteria() {
        return oredCriteria;
    }

    public void or(Criteria criteria) {
        oredCriteria.add(criteria);
    }

    public Criteria or() {
        Criteria criteria = createCriteriaInternal();
        oredCriteria.add(criteria);
        return criteria;
    }

    public Criteria createCriteria() {
        Criteria criteria = createCriteriaInternal();
        if (oredCriteria.size() == 0) {
            oredCriteria.add(criteria);
        }
        return criteria;
    }

    protected Criteria createCriteriaInternal() {
        Criteria criteria = new Criteria();
        return criteria;
    }

    public void clear() {
        oredCriteria.clear();
        orderByClause = null;
        distinct = false;
    }

    protected abstract static class GeneratedCriteria {
        protected List<Criterion> criteria;

        protected GeneratedCriteria() {
            super();
            criteria = new ArrayList<Criterion>();
        }

        public boolean isValid() {
            return criteria.size() > 0;
        }

        public List<Criterion> getAllCriteria() {
            return criteria;
        }

        public List<Criterion> getCriteria() {
            return criteria;
        }

        protected void addCriterion(String condition) {
            if (condition == null) {
                throw new RuntimeException("Value for condition cannot be null");
            }
            criteria.add(new Criterion(condition));
        }

        protected void addCriterion(String condition, Object value, String property) {
            if (value == null) {
                throw new RuntimeException("Value for " + property + " cannot be null");
            }
            criteria.add(new Criterion(condition, value));
        }

        protected void addCriterion(String condition, Object value1, Object value2, String property) {
            if (value1 == null || value2 == null) {
                throw new RuntimeException("Between values for " + property + " cannot be null");
            }
            criteria.add(new Criterion(condition, value1, value2));
        }

        protected void addCriterionForJDBCDate(String condition, Date value, String property) {
            if (value == null) {
                throw new RuntimeException("Value for " + property + " cannot be null");
            }
            addCriterion(condition, new java.sql.Date(value.getTime()), property);
        }

        protected void addCriterionForJDBCDate(String condition, List<Date> values, String property) {
            if (values == null || values.size() == 0) {
                throw new RuntimeException("Value list for " + property + " cannot be null or empty");
            }
            List<java.sql.Date> dateList = new ArrayList<java.sql.Date>();
            Iterator<Date> iter = values.iterator();
            while (iter.hasNext()) {
                dateList.add(new java.sql.Date(iter.next().getTime()));
            }
            addCriterion(condition, dateList, property);
        }

        protected void addCriterionForJDBCDate(String condition, Date value1, Date value2, String property) {
            if (value1 == null || value2 == null) {
                throw new RuntimeException("Between values for " + property + " cannot be null");
            }
            addCriterion(condition, new java.sql.Date(value1.getTime()), new java.sql.Date(value2.getTime()), property);
        }

        public Criteria andIdIsNull() {
            addCriterion("id is null");
            return (Criteria) this;
        }

        public Criteria andIdIsNotNull() {
            addCriterion("id is not null");
            return (Criteria) this;
        }

        public Criteria andIdEqualTo(Integer value) {
            addCriterion("id =", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdNotEqualTo(Integer value) {
            addCriterion("id <>", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdGreaterThan(Integer value) {
            addCriterion("id >", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdGreaterThanOrEqualTo(Integer value) {
            addCriterion("id >=", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdLessThan(Integer value) {
            addCriterion("id <", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdLessThanOrEqualTo(Integer value) {
            addCriterion("id <=", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdIn(List<Integer> values) {
            addCriterion("id in", values, "id");
            return (Criteria) this;
        }

        public Criteria andIdNotIn(List<Integer> values) {
            addCriterion("id not in", values, "id");
            return (Criteria) this;
        }

        public Criteria andIdBetween(Integer value1, Integer value2) {
            addCriterion("id between", value1, value2, "id");
            return (Criteria) this;
        }

        public Criteria andIdNotBetween(Integer value1, Integer value2) {
            addCriterion("id not between", value1, value2, "id");
            return (Criteria) this;
        }

        public Criteria andCropGpIdIsNull() {
            addCriterion("crop_gp_id is null");
            return (Criteria) this;
        }

        public Criteria andCropGpIdIsNotNull() {
            addCriterion("crop_gp_id is not null");
            return (Criteria) this;
        }

        public Criteria andCropGpIdEqualTo(Integer value) {
            addCriterion("crop_gp_id =", value, "cropGpId");
            return (Criteria) this;
        }

        public Criteria andCropGpIdNotEqualTo(Integer value) {
            addCriterion("crop_gp_id <>", value, "cropGpId");
            return (Criteria) this;
        }

        public Criteria andCropGpIdGreaterThan(Integer value) {
            addCriterion("crop_gp_id >", value, "cropGpId");
            return (Criteria) this;
        }

        public Criteria andCropGpIdGreaterThanOrEqualTo(Integer value) {
            addCriterion("crop_gp_id >=", value, "cropGpId");
            return (Criteria) this;
        }

        public Criteria andCropGpIdLessThan(Integer value) {
            addCriterion("crop_gp_id <", value, "cropGpId");
            return (Criteria) this;
        }

        public Criteria andCropGpIdLessThanOrEqualTo(Integer value) {
            addCriterion("crop_gp_id <=", value, "cropGpId");
            return (Criteria) this;
        }

        public Criteria andCropGpIdIn(List<Integer> values) {
            addCriterion("crop_gp_id in", values, "cropGpId");
            return (Criteria) this;
        }

        public Criteria andCropGpIdNotIn(List<Integer> values) {
            addCriterion("crop_gp_id not in", values, "cropGpId");
            return (Criteria) this;
        }

        public Criteria andCropGpIdBetween(Integer value1, Integer value2) {
            addCriterion("crop_gp_id between", value1, value2, "cropGpId");
            return (Criteria) this;
        }

        public Criteria andCropGpIdNotBetween(Integer value1, Integer value2) {
            addCriterion("crop_gp_id not between", value1, value2, "cropGpId");
            return (Criteria) this;
        }

        public Criteria andFitIsNull() {
            addCriterion("fit is null");
            return (Criteria) this;
        }

        public Criteria andFitIsNotNull() {
            addCriterion("fit is not null");
            return (Criteria) this;
        }

        public Criteria andFitEqualTo(Float value) {
            addCriterion("fit =", value, "fit");
            return (Criteria) this;
        }

        public Criteria andFitNotEqualTo(Float value) {
            addCriterion("fit <>", value, "fit");
            return (Criteria) this;
        }

        public Criteria andFitGreaterThan(Float value) {
            addCriterion("fit >", value, "fit");
            return (Criteria) this;
        }

        public Criteria andFitGreaterThanOrEqualTo(Float value) {
            addCriterion("fit >=", value, "fit");
            return (Criteria) this;
        }

        public Criteria andFitLessThan(Float value) {
            addCriterion("fit <", value, "fit");
            return (Criteria) this;
        }

        public Criteria andFitLessThanOrEqualTo(Float value) {
            addCriterion("fit <=", value, "fit");
            return (Criteria) this;
        }

        public Criteria andFitIn(List<Float> values) {
            addCriterion("fit in", values, "fit");
            return (Criteria) this;
        }

        public Criteria andFitNotIn(List<Float> values) {
            addCriterion("fit not in", values, "fit");
            return (Criteria) this;
        }

        public Criteria andFitBetween(Float value1, Float value2) {
            addCriterion("fit between", value1, value2, "fit");
            return (Criteria) this;
        }

        public Criteria andFitNotBetween(Float value1, Float value2) {
            addCriterion("fit not between", value1, value2, "fit");
            return (Criteria) this;
        }

        public Criteria andFitMinIsNull() {
            addCriterion("fit_min is null");
            return (Criteria) this;
        }

        public Criteria andFitMinIsNotNull() {
            addCriterion("fit_min is not null");
            return (Criteria) this;
        }

        public Criteria andFitMinEqualTo(Float value) {
            addCriterion("fit_min =", value, "fitMin");
            return (Criteria) this;
        }

        public Criteria andFitMinNotEqualTo(Float value) {
            addCriterion("fit_min <>", value, "fitMin");
            return (Criteria) this;
        }

        public Criteria andFitMinGreaterThan(Float value) {
            addCriterion("fit_min >", value, "fitMin");
            return (Criteria) this;
        }

        public Criteria andFitMinGreaterThanOrEqualTo(Float value) {
            addCriterion("fit_min >=", value, "fitMin");
            return (Criteria) this;
        }

        public Criteria andFitMinLessThan(Float value) {
            addCriterion("fit_min <", value, "fitMin");
            return (Criteria) this;
        }

        public Criteria andFitMinLessThanOrEqualTo(Float value) {
            addCriterion("fit_min <=", value, "fitMin");
            return (Criteria) this;
        }

        public Criteria andFitMinIn(List<Float> values) {
            addCriterion("fit_min in", values, "fitMin");
            return (Criteria) this;
        }

        public Criteria andFitMinNotIn(List<Float> values) {
            addCriterion("fit_min not in", values, "fitMin");
            return (Criteria) this;
        }

        public Criteria andFitMinBetween(Float value1, Float value2) {
            addCriterion("fit_min between", value1, value2, "fitMin");
            return (Criteria) this;
        }

        public Criteria andFitMinNotBetween(Float value1, Float value2) {
            addCriterion("fit_min not between", value1, value2, "fitMin");
            return (Criteria) this;
        }

        public Criteria andLessFitMinIsNull() {
            addCriterion("less_fit_min is null");
            return (Criteria) this;
        }

        public Criteria andLessFitMinIsNotNull() {
            addCriterion("less_fit_min is not null");
            return (Criteria) this;
        }

        public Criteria andLessFitMinEqualTo(Float value) {
            addCriterion("less_fit_min =", value, "lessFitMin");
            return (Criteria) this;
        }

        public Criteria andLessFitMinNotEqualTo(Float value) {
            addCriterion("less_fit_min <>", value, "lessFitMin");
            return (Criteria) this;
        }

        public Criteria andLessFitMinGreaterThan(Float value) {
            addCriterion("less_fit_min >", value, "lessFitMin");
            return (Criteria) this;
        }

        public Criteria andLessFitMinGreaterThanOrEqualTo(Float value) {
            addCriterion("less_fit_min >=", value, "lessFitMin");
            return (Criteria) this;
        }

        public Criteria andLessFitMinLessThan(Float value) {
            addCriterion("less_fit_min <", value, "lessFitMin");
            return (Criteria) this;
        }

        public Criteria andLessFitMinLessThanOrEqualTo(Float value) {
            addCriterion("less_fit_min <=", value, "lessFitMin");
            return (Criteria) this;
        }

        public Criteria andLessFitMinIn(List<Float> values) {
            addCriterion("less_fit_min in", values, "lessFitMin");
            return (Criteria) this;
        }

        public Criteria andLessFitMinNotIn(List<Float> values) {
            addCriterion("less_fit_min not in", values, "lessFitMin");
            return (Criteria) this;
        }

        public Criteria andLessFitMinBetween(Float value1, Float value2) {
            addCriterion("less_fit_min between", value1, value2, "lessFitMin");
            return (Criteria) this;
        }

        public Criteria andLessFitMinNotBetween(Float value1, Float value2) {
            addCriterion("less_fit_min not between", value1, value2, "lessFitMin");
            return (Criteria) this;
        }

        public Criteria andFitMaxIsNull() {
            addCriterion("fit_max is null");
            return (Criteria) this;
        }

        public Criteria andFitMaxIsNotNull() {
            addCriterion("fit_max is not null");
            return (Criteria) this;
        }

        public Criteria andFitMaxEqualTo(Float value) {
            addCriterion("fit_max =", value, "fitMax");
            return (Criteria) this;
        }

        public Criteria andFitMaxNotEqualTo(Float value) {
            addCriterion("fit_max <>", value, "fitMax");
            return (Criteria) this;
        }

        public Criteria andFitMaxGreaterThan(Float value) {
            addCriterion("fit_max >", value, "fitMax");
            return (Criteria) this;
        }

        public Criteria andFitMaxGreaterThanOrEqualTo(Float value) {
            addCriterion("fit_max >=", value, "fitMax");
            return (Criteria) this;
        }

        public Criteria andFitMaxLessThan(Float value) {
            addCriterion("fit_max <", value, "fitMax");
            return (Criteria) this;
        }

        public Criteria andFitMaxLessThanOrEqualTo(Float value) {
            addCriterion("fit_max <=", value, "fitMax");
            return (Criteria) this;
        }

        public Criteria andFitMaxIn(List<Float> values) {
            addCriterion("fit_max in", values, "fitMax");
            return (Criteria) this;
        }

        public Criteria andFitMaxNotIn(List<Float> values) {
            addCriterion("fit_max not in", values, "fitMax");
            return (Criteria) this;
        }

        public Criteria andFitMaxBetween(Float value1, Float value2) {
            addCriterion("fit_max between", value1, value2, "fitMax");
            return (Criteria) this;
        }

        public Criteria andFitMaxNotBetween(Float value1, Float value2) {
            addCriterion("fit_max not between", value1, value2, "fitMax");
            return (Criteria) this;
        }

        public Criteria andLessFitMaxIsNull() {
            addCriterion("less_fit_max is null");
            return (Criteria) this;
        }

        public Criteria andLessFitMaxIsNotNull() {
            addCriterion("less_fit_max is not null");
            return (Criteria) this;
        }

        public Criteria andLessFitMaxEqualTo(Float value) {
            addCriterion("less_fit_max =", value, "lessFitMax");
            return (Criteria) this;
        }

        public Criteria andLessFitMaxNotEqualTo(Float value) {
            addCriterion("less_fit_max <>", value, "lessFitMax");
            return (Criteria) this;
        }

        public Criteria andLessFitMaxGreaterThan(Float value) {
            addCriterion("less_fit_max >", value, "lessFitMax");
            return (Criteria) this;
        }

        public Criteria andLessFitMaxGreaterThanOrEqualTo(Float value) {
            addCriterion("less_fit_max >=", value, "lessFitMax");
            return (Criteria) this;
        }

        public Criteria andLessFitMaxLessThan(Float value) {
            addCriterion("less_fit_max <", value, "lessFitMax");
            return (Criteria) this;
        }

        public Criteria andLessFitMaxLessThanOrEqualTo(Float value) {
            addCriterion("less_fit_max <=", value, "lessFitMax");
            return (Criteria) this;
        }

        public Criteria andLessFitMaxIn(List<Float> values) {
            addCriterion("less_fit_max in", values, "lessFitMax");
            return (Criteria) this;
        }

        public Criteria andLessFitMaxNotIn(List<Float> values) {
            addCriterion("less_fit_max not in", values, "lessFitMax");
            return (Criteria) this;
        }

        public Criteria andLessFitMaxBetween(Float value1, Float value2) {
            addCriterion("less_fit_max between", value1, value2, "lessFitMax");
            return (Criteria) this;
        }

        public Criteria andLessFitMaxNotBetween(Float value1, Float value2) {
            addCriterion("less_fit_max not between", value1, value2, "lessFitMax");
            return (Criteria) this;
        }

        public Criteria andSortIsNull() {
            addCriterion("sort is null");
            return (Criteria) this;
        }

        public Criteria andSortIsNotNull() {
            addCriterion("sort is not null");
            return (Criteria) this;
        }

        public Criteria andSortEqualTo(String value) {
            addCriterion("sort =", value, "sort");
            return (Criteria) this;
        }

        public Criteria andSortNotEqualTo(String value) {
            addCriterion("sort <>", value, "sort");
            return (Criteria) this;
        }

        public Criteria andSortGreaterThan(String value) {
            addCriterion("sort >", value, "sort");
            return (Criteria) this;
        }

        public Criteria andSortGreaterThanOrEqualTo(String value) {
            addCriterion("sort >=", value, "sort");
            return (Criteria) this;
        }

        public Criteria andSortLessThan(String value) {
            addCriterion("sort <", value, "sort");
            return (Criteria) this;
        }

        public Criteria andSortLessThanOrEqualTo(String value) {
            addCriterion("sort <=", value, "sort");
            return (Criteria) this;
        }

        public Criteria andSortLike(String value) {
            addCriterion("sort like", value, "sort");
            return (Criteria) this;
        }

        public Criteria andSortNotLike(String value) {
            addCriterion("sort not like", value, "sort");
            return (Criteria) this;
        }

        public Criteria andSortIn(List<String> values) {
            addCriterion("sort in", values, "sort");
            return (Criteria) this;
        }

        public Criteria andSortNotIn(List<String> values) {
            addCriterion("sort not in", values, "sort");
            return (Criteria) this;
        }

        public Criteria andSortBetween(String value1, String value2) {
            addCriterion("sort between", value1, value2, "sort");
            return (Criteria) this;
        }

        public Criteria andSortNotBetween(String value1, String value2) {
            addCriterion("sort not between", value1, value2, "sort");
            return (Criteria) this;
        }

        public Criteria andDescriptionIsNull() {
            addCriterion("description is null");
            return (Criteria) this;
        }

        public Criteria andDescriptionIsNotNull() {
            addCriterion("description is not null");
            return (Criteria) this;
        }

        public Criteria andDescriptionEqualTo(String value) {
            addCriterion("description =", value, "description");
            return (Criteria) this;
        }

        public Criteria andDescriptionNotEqualTo(String value) {
            addCriterion("description <>", value, "description");
            return (Criteria) this;
        }

        public Criteria andDescriptionGreaterThan(String value) {
            addCriterion("description >", value, "description");
            return (Criteria) this;
        }

        public Criteria andDescriptionGreaterThanOrEqualTo(String value) {
            addCriterion("description >=", value, "description");
            return (Criteria) this;
        }

        public Criteria andDescriptionLessThan(String value) {
            addCriterion("description <", value, "description");
            return (Criteria) this;
        }

        public Criteria andDescriptionLessThanOrEqualTo(String value) {
            addCriterion("description <=", value, "description");
            return (Criteria) this;
        }

        public Criteria andDescriptionLike(String value) {
            addCriterion("description like", value, "description");
            return (Criteria) this;
        }

        public Criteria andDescriptionNotLike(String value) {
            addCriterion("description not like", value, "description");
            return (Criteria) this;
        }

        public Criteria andDescriptionIn(List<String> values) {
            addCriterion("description in", values, "description");
            return (Criteria) this;
        }

        public Criteria andDescriptionNotIn(List<String> values) {
            addCriterion("description not in", values, "description");
            return (Criteria) this;
        }

        public Criteria andDescriptionBetween(String value1, String value2) {
            addCriterion("description between", value1, value2, "description");
            return (Criteria) this;
        }

        public Criteria andDescriptionNotBetween(String value1, String value2) {
            addCriterion("description not between", value1, value2, "description");
            return (Criteria) this;
        }

        public Criteria andUpdateUserIsNull() {
            addCriterion("update_user is null");
            return (Criteria) this;
        }

        public Criteria andUpdateUserIsNotNull() {
            addCriterion("update_user is not null");
            return (Criteria) this;
        }

        public Criteria andUpdateUserEqualTo(String value) {
            addCriterion("update_user =", value, "updateUser");
            return (Criteria) this;
        }

        public Criteria andUpdateUserNotEqualTo(String value) {
            addCriterion("update_user <>", value, "updateUser");
            return (Criteria) this;
        }

        public Criteria andUpdateUserGreaterThan(String value) {
            addCriterion("update_user >", value, "updateUser");
            return (Criteria) this;
        }

        public Criteria andUpdateUserGreaterThanOrEqualTo(String value) {
            addCriterion("update_user >=", value, "updateUser");
            return (Criteria) this;
        }

        public Criteria andUpdateUserLessThan(String value) {
            addCriterion("update_user <", value, "updateUser");
            return (Criteria) this;
        }

        public Criteria andUpdateUserLessThanOrEqualTo(String value) {
            addCriterion("update_user <=", value, "updateUser");
            return (Criteria) this;
        }

        public Criteria andUpdateUserLike(String value) {
            addCriterion("update_user like", value, "updateUser");
            return (Criteria) this;
        }

        public Criteria andUpdateUserNotLike(String value) {
            addCriterion("update_user not like", value, "updateUser");
            return (Criteria) this;
        }

        public Criteria andUpdateUserIn(List<String> values) {
            addCriterion("update_user in", values, "updateUser");
            return (Criteria) this;
        }

        public Criteria andUpdateUserNotIn(List<String> values) {
            addCriterion("update_user not in", values, "updateUser");
            return (Criteria) this;
        }

        public Criteria andUpdateUserBetween(String value1, String value2) {
            addCriterion("update_user between", value1, value2, "updateUser");
            return (Criteria) this;
        }

        public Criteria andUpdateUserNotBetween(String value1, String value2) {
            addCriterion("update_user not between", value1, value2, "updateUser");
            return (Criteria) this;
        }

        public Criteria andUpdateTimeIsNull() {
            addCriterion("update_time is null");
            return (Criteria) this;
        }

        public Criteria andUpdateTimeIsNotNull() {
            addCriterion("update_time is not null");
            return (Criteria) this;
        }

        public Criteria andUpdateTimeEqualTo(Date value) {
            addCriterionForJDBCDate("update_time =", value, "updateTime");
            return (Criteria) this;
        }

        public Criteria andUpdateTimeNotEqualTo(Date value) {
            addCriterionForJDBCDate("update_time <>", value, "updateTime");
            return (Criteria) this;
        }

        public Criteria andUpdateTimeGreaterThan(Date value) {
            addCriterionForJDBCDate("update_time >", value, "updateTime");
            return (Criteria) this;
        }

        public Criteria andUpdateTimeGreaterThanOrEqualTo(Date value) {
            addCriterionForJDBCDate("update_time >=", value, "updateTime");
            return (Criteria) this;
        }

        public Criteria andUpdateTimeLessThan(Date value) {
            addCriterionForJDBCDate("update_time <", value, "updateTime");
            return (Criteria) this;
        }

        public Criteria andUpdateTimeLessThanOrEqualTo(Date value) {
            addCriterionForJDBCDate("update_time <=", value, "updateTime");
            return (Criteria) this;
        }

        public Criteria andUpdateTimeIn(List<Date> values) {
            addCriterionForJDBCDate("update_time in", values, "updateTime");
            return (Criteria) this;
        }

        public Criteria andUpdateTimeNotIn(List<Date> values) {
            addCriterionForJDBCDate("update_time not in", values, "updateTime");
            return (Criteria) this;
        }

        public Criteria andUpdateTimeBetween(Date value1, Date value2) {
            addCriterionForJDBCDate("update_time between", value1, value2, "updateTime");
            return (Criteria) this;
        }

        public Criteria andUpdateTimeNotBetween(Date value1, Date value2) {
            addCriterionForJDBCDate("update_time not between", value1, value2, "updateTime");
            return (Criteria) this;
        }

        public Criteria andDeleteIdIsNull() {
            addCriterion("delete_id is null");
            return (Criteria) this;
        }

        public Criteria andDeleteIdIsNotNull() {
            addCriterion("delete_id is not null");
            return (Criteria) this;
        }

        public Criteria andDeleteIdEqualTo(Integer value) {
            addCriterion("delete_id =", value, "deleteId");
            return (Criteria) this;
        }

        public Criteria andDeleteIdNotEqualTo(Integer value) {
            addCriterion("delete_id <>", value, "deleteId");
            return (Criteria) this;
        }

        public Criteria andDeleteIdGreaterThan(Integer value) {
            addCriterion("delete_id >", value, "deleteId");
            return (Criteria) this;
        }

        public Criteria andDeleteIdGreaterThanOrEqualTo(Integer value) {
            addCriterion("delete_id >=", value, "deleteId");
            return (Criteria) this;
        }

        public Criteria andDeleteIdLessThan(Integer value) {
            addCriterion("delete_id <", value, "deleteId");
            return (Criteria) this;
        }

        public Criteria andDeleteIdLessThanOrEqualTo(Integer value) {
            addCriterion("delete_id <=", value, "deleteId");
            return (Criteria) this;
        }

        public Criteria andDeleteIdIn(List<Integer> values) {
            addCriterion("delete_id in", values, "deleteId");
            return (Criteria) this;
        }

        public Criteria andDeleteIdNotIn(List<Integer> values) {
            addCriterion("delete_id not in", values, "deleteId");
            return (Criteria) this;
        }

        public Criteria andDeleteIdBetween(Integer value1, Integer value2) {
            addCriterion("delete_id between", value1, value2, "deleteId");
            return (Criteria) this;
        }

        public Criteria andDeleteIdNotBetween(Integer value1, Integer value2) {
            addCriterion("delete_id not between", value1, value2, "deleteId");
            return (Criteria) this;
        }
    }

    public static class Criteria extends GeneratedCriteria {

        protected Criteria() {
            super();
        }
    }

    public static class Criterion {
        private String condition;

        private Object value;

        private Object secondValue;

        private boolean noValue;

        private boolean singleValue;

        private boolean betweenValue;

        private boolean listValue;

        private String typeHandler;

        public String getCondition() {
            return condition;
        }

        public Object getValue() {
            return value;
        }

        public Object getSecondValue() {
            return secondValue;
        }

        public boolean isNoValue() {
            return noValue;
        }

        public boolean isSingleValue() {
            return singleValue;
        }

        public boolean isBetweenValue() {
            return betweenValue;
        }

        public boolean isListValue() {
            return listValue;
        }

        public String getTypeHandler() {
            return typeHandler;
        }

        protected Criterion(String condition) {
            super();
            this.condition = condition;
            this.typeHandler = null;
            this.noValue = true;
        }

        protected Criterion(String condition, Object value, String typeHandler) {
            super();
            this.condition = condition;
            this.value = value;
            this.typeHandler = typeHandler;
            if (value instanceof List<?>) {
                this.listValue = true;
            } else {
                this.singleValue = true;
            }
        }

        protected Criterion(String condition, Object value) {
            this(condition, value, null);
        }

        protected Criterion(String condition, Object value, Object secondValue, String typeHandler) {
            super();
            this.condition = condition;
            this.value = value;
            this.secondValue = secondValue;
            this.typeHandler = typeHandler;
            this.betweenValue = true;
        }

        protected Criterion(String condition, Object value, Object secondValue) {
            this(condition, value, secondValue, null);
        }
    }
}