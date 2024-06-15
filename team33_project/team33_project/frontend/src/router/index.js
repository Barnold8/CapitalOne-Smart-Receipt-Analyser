import { createRouter, createWebHistory } from '@ionic/vue-router';
import OpenControl from '../controllers/OpenControl.vue';
import AnalyticsPage from '../views/AnalyticsPage.vue';
import DateButtonList from '../components/DateButtonList.vue';
import ErrorModal from '../components/ErrorModal.vue';
const routes = [
  {
    path: '/',
    name: 'OpenControl',
    component: OpenControl
  },
  {
    path: '/analytics',
    name: 'Analytics',
    component: AnalyticsPage
  },
  {
    path: '/test',
    component: DateButtonList
  },
  {
    path: '/error',
    component: ErrorModal
  }
  //   path: '/home',
  //   name: 'Home',
  //   component: HomePage
  // }
]

const router = createRouter({
  history: createWebHistory(process.env.BASE_URL),
  routes
})

export default router
